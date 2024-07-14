import React, { useState, useEffect, useRef } from 'react'
import Modal from './Modal'
import { useSendFeedbackMutation } from '../store/web/contact.api'
import { IContacts } from '../modules/contact'

export interface IForm {
  selectService?: number
  sendFeedback?: (body: IContacts) => void
  isError?: boolean
  isSuccess?: boolean
  isLoading?: boolean
}

const Form = ({ selectService, sendFeedback, isError, isSuccess, isLoading }: IForm) => {
  const [isLegal, setIsLegal] = useState(true)

  const formRef = useRef<HTMLFormElement>(null)

  useEffect(() => {
    if (isError || isSuccess) {
      formRef?.current?.reset()
    }
  }, [isSuccess, isError])

  return (
    <>
      <form
        ref={formRef}
        className="grid gap-4 lg:col-span-3 lg:grid-cols-4 lg:gap-8"
        id="ContactsForm"
        onSubmit={(e) => {
          e.preventDefault()

          const body: IContacts = {
            //@ts-ignore
            name: e.currentTarget.elements.name.value,
            //@ts-ignore
            phone: e.currentTarget.elements.phone.value,
            //@ts-ignore
            type: parseInt(e.currentTarget.elements.type.value),
            //@ts-ignore
            service: parseInt(e.currentTarget.elements.service.value),
            //@ts-ignore
            description: e.currentTarget.elements.message.value,
          }

          sendFeedback && sendFeedback(body)
        }}
      >
        <select
          id="type"
          required
          onInvalid={(e) => {
            e.currentTarget.classList.add('invalid:border-rose-500')
            e.currentTarget.setCustomValidity('Тип лица не выбран')
          }}
          onChange={(e) => {
            setIsLegal(e.currentTarget.selectedIndex === 1 ? true : false)
            e.currentTarget.setCustomValidity('')
          }}
          className="border-2 border-white bg-blue_light/40 px-1 py-2 text-lg text-white opacity-80 !outline-none placeholder:text-white/90 valid:border-blue_light hover:opacity-100 focus-visible:rounded-none active:opacity-100 md:px-3 md:py-4 lg:col-span-2"
        >
          <option value="">Выберите тип лица</option>
          <option value="0">Юридическое лицо</option>
          <option value="1">Физическое лицо</option>
        </select>
        <select
          id="service"
          required
          defaultValue={selectService}
          onInvalid={(e) => {
            e.currentTarget.classList.add('invalid:border-rose-500')
            e.currentTarget.setCustomValidity('Специалист не выбран не выбран')
          }}
          onChange={(e) => {
            e.currentTarget.setCustomValidity('')
          }}
          className="border-2 border-white bg-blue_light/40 px-1 py-2 text-lg text-white opacity-80 !outline-none placeholder:text-white/90 valid:border-blue_light hover:opacity-100 focus-visible:rounded-none active:opacity-100 md:px-3 md:py-4 lg:col-span-2"
        >
          <option value="">Выберите специалиста</option>
          <option value="0">Не могу выбрать специалиста</option>
          <option value="1">Юридические услуги</option>
          <option value="2">Услуги экономиста</option>
          <option value="3">Бухгалтерские услуги</option>
          <option value="4">Услуги специалистра по кадрам</option>
          <option value="5">HR - услуги</option>
        </select>
        {isLegal ? (
          <input
            placeholder="Название юридического лица"
            id="name"
            name="name"
            onInvalid={(e) => {
              e.currentTarget.classList.add('invalid:border-rose-500')
              e.currentTarget.setCustomValidity('Название не указано')
            }}
            onChange={(e) => {
              e.currentTarget.setCustomValidity('')
            }}
            required
            className="border-2 border-white bg-blue_light/40 px-1 py-2 text-lg text-white opacity-80 !outline-none placeholder:text-white/90 valid:border-blue_light hover:opacity-100 focus-visible:rounded-none active:opacity-100 md:px-3 md:py-4 lg:col-span-2"
          />
        ) : (
          <input
            placeholder="Имя"
            id="name"
            name="name"
            type="text"
            required
            onInvalid={(e) => {
              e.currentTarget.classList.add('invalid:border-rose-500')
              e.currentTarget.setCustomValidity('Имя не указано')
            }}
            onChange={(e) => {
              e.currentTarget.setCustomValidity('')
            }}
            className="border-2 border-white bg-blue_light/40 px-1 py-2 text-lg text-white opacity-80 !outline-none placeholder:text-white/90 valid:border-blue_light hover:opacity-100 focus-visible:rounded-none active:opacity-100 md:px-3 md:py-4 lg:col-span-2"
          />
        )}
        <input
          placeholder="Телефон"
          type="tel"
          id="phone"
          name="phone"
          //pattern="[0-9]{2}-[0-9]{3}-[0-9]{2}-[0-9]{2}"
          maxLength={12}
          // onKeyDown={(e) => {
          //   if (e.key === 'Backspace') {
          //     setIsBackspacePressed(true)
          //   } else {
          //     setIsBackspacePressed(false)
          //   }
          // }}
          // onInput={(e) => {
          //   if (isBackspacePressed) return

          //   const inputStr = e.currentTarget.value
          //   e.currentTarget.setCustomValidity('')

          //   if (inputStr.length === 3 || inputStr.length === 7 || inputStr.length === 10) {
          //     const str =
          //       inputStr.substring(0, inputStr.length - 1) + '-' + inputStr[inputStr.length - 1]
          //     e.currentTarget.value = str
          //   }
          // }}
          // onChange={(e) => {}}
          required
          onInvalid={(e) => {
            e.currentTarget.classList.add('invalid:border-rose-500')
            e.currentTarget.setCustomValidity('Телефон не указан')
          }}
          className="border-2 border-white bg-blue_light/40 px-1 py-2 text-lg text-white opacity-80 !outline-none placeholder:text-white/90 valid:border-blue_light hover:opacity-100 focus-visible:rounded-none active:opacity-100 md:px-3 md:py-4 lg:col-span-2"
        />

        <textarea
          placeholder="Опишите вашу проблему"
          id="message"
          required
          onInvalid={(e) => {
            e.currentTarget.classList.add('invalid:border-rose-500')
            e.currentTarget.setCustomValidity('Описание не добавлено')
          }}
          onChange={(e) => {
            e.currentTarget.setCustomValidity('')
          }}
          className="min-h-[160px] border-2 border-white bg-blue_light/40 px-1 py-2 text-lg text-white opacity-80 !outline-none  placeholder:text-white/90 valid:border-blue_light hover:opacity-100 focus-visible:rounded-none active:opacity-100 md:min-h-[320px] md:px-3 md:py-4 lg:col-span-4"
        />
        {!isLegal && (
          <div className="flex gap-2 lg:col-span-4">
            <input type="checkbox" id="personaldata" name="personaldata" required />
            <label htmlFor="personaldata">
              Я ознакомлен с{' '}
              <a
                href="/documents/Personal.pdf"
                target="_blank"
                rel="noreferrer"
                className="font-bold hover:underline hover:underline-offset-2"
              >
                Политикой в области обработки персональных данных
              </a>{' '}
              и даю своё согласие на их обработку
            </label>
          </div>
        )}
        <button
          type="submit"
          className="w-full border-2 border-white bg-blue_dark/40 px-1 py-2 text-lg text-white transition-all duration-300 hover:border-blue_light md:px-3 md:py-4 lg:col-span-4"
        >
          Свяжитесь со мной
        </button>
      </form>
    </>
  )
}

export default Form
