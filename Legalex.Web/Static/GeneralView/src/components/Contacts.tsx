import React from 'react'
import Form from './Form'

const Contacts = () => {
  return (
    <>
      <section id="Contacts" className="relative flex justify-center px-4 py-8 lg:py-16">
        <div className="container">
          <div>
            <div>
              <span className="text-xl text-blue_light lg:ml-[0.17rem]">Контакты</span>
              <h3 className="text-2xl sm:text-4xl lg:text-6xl">
                Получите персонализированную
                <span className="font-medium text-blue_light"> поддержку</span> от нашей команды
              </h3>
            </div>
            <div className="mt-16">
              <div className="grid min-h-[20rem] gap-4 text-black md:gap-8 lg:grid-cols-3 lg:gap-12">
                <div className="flex max-w-[28rem] flex-col gap-4">
                  <div className="flex w-full gap-4 lg:justify-center lg:gap-6">
                    <div className="relative z-[1] h-full max-h-[2.5rem] min-h-[2.5rem] w-full max-w-[2.5rem] bg-blue_light">
                      <img
                        src={'/images/location.png'}
                        className="absolute left-2/4 top-2/4 h-6 w-6 -translate-x-2/4 -translate-y-2/4"
                        alt="icon-document"
                      />
                    </div>
                    <span className="md:text-lg">
                      г.Минск, улица Передовая 15, помещение 1, офис 16 Г
                    </span>
                  </div>
                  <iframe
                    src="https://yandex.ru/map-widget/v1/?um=constructor%3A1d595dba3335b9053bc84c8484c9bb40f8f64190dfaf35e568ccadf546868188&amp;source=constructor"
                    width="100%"
                    height="100%"
                  ></iframe>
                </div>
                <div className="flex gap-4 lg:justify-center lg:gap-6">
                  <div className="relative z-[1] h-full max-h-[2.5rem] min-h-[2.5rem] w-full max-w-[2.5rem] bg-blue_light">
                    <img
                      src={'/images/calendar.png'}
                      className="absolute left-2/4 top-2/4 h-6 w-6 -translate-x-2/4 -translate-y-2/4"
                      alt="icon-document"
                    />
                  </div>
                  <div className="flex flex-col md:text-lg">
                    <span>
                      <b>Понедельник-пятница:</b>
                      <br /> с 9:00 до 18:00, без обеда
                    </span>
                    <span>
                      <b>Выходной: </b>
                      <br />
                      суббота, воскресенье
                    </span>
                    <span>
                      <b>Для клиентов:</b>
                      <br />
                      24/7 в мессенджерах
                    </span>
                  </div>
                </div>
                <div className="flex flex-col gap-4 lg:gap-6">
                  <div className="flex gap-4 lg:gap-8">
                    <div className="relative z-[1] h-full max-h-[2.5rem] min-h-[2.5rem] w-full max-w-[2.5rem] bg-blue_light">
                      <img
                        src={'/images/phone.png'}
                        className="absolute left-2/4 top-2/4 h-6 w-6 -translate-x-2/4 -translate-y-2/4"
                        alt="icon-document"
                      />
                    </div>
                    <span className="md:text-lg">
                      <a href="tel:+375447905525" className="underline-offset-2 hover:underline">
                        +375 (44) 790-55-25
                      </a>
                    </span>
                  </div>
                  <div className="flex gap-4 lg:gap-6">
                    <div className="relative z-[1] h-full max-h-[2.5rem] min-h-[2.5rem] w-full max-w-[2.5rem] bg-blue_light">
                      <img
                        src={'/images/message.png'}
                        className="absolute left-2/4 top-2/4 h-6 w-6 -translate-x-2/4 -translate-y-2/4"
                        alt="icon-document"
                      />
                    </div>
                    <span className="md:text-lg">
                      <a
                        href="mailto:office.legalex@gmail.com"
                        className="underline-offset-2 hover:underline"
                      >
                        office.legalex@gmail.com
                      </a>
                    </span>
                  </div>
                  <button
                    className="p-4"
                    style={{ backgroundColor: 'rgb(13, 59, 102)' }}
                    type="button"
                    // onClick={() => {
                    //   setIsActiveOrderForm(true)
                    // }}
                  >
                    Оставить заявку
                  </button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
    </>
  )
}

export default Contacts
