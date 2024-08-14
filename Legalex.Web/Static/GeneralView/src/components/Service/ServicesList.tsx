import React, { useEffect } from 'react'
import { Helmet } from 'react-helmet-async'
import ServiceCard from './ServiceCard'
import { useGetServicesQuery } from '../../store/web/strapi.api'

// const list = [
//   {
//     id: 'legal',
//     preview_image: '/images/service1.webp',
//     caption: 'Юридические услуги',
//   },
//   {
//     id: 'crisisManagement',
//     preview_image: '/images/service2.webp',
//     caption: 'Антикризисное управление',
//   },
//   {
//     id: 'mediation',
//     preview_image: '/images/service3.webp',
//     caption: 'Медиация',
//   },
//   {
//     id: 'hr',
//     preview_image: '/images/service4.webp',
//     caption: 'HR-услуги',
//   },
//   {
//     id: 'hrSupport',
//     preview_image: '/images/service2.webp',
//     caption: 'Услуги кадрового специалиста',
//   },
//   {
//     id: 'occupationalSafetyAndHealth',
//     preview_image: '/images/service4.webp',
//     caption: 'Охрана труда',
//   },
//   {
//     id: 'protectionOfPersonalInformation',
//     preview_image: '/images/service3.webp',
//     caption: 'Защита персональных данных',
//   },
//   {
//     id: 'economy',
//     preview_image: '/images/service1.webp',
//     caption: 'Услуги экономиста',
//   },
// ]

const ServicesList = () => {
  const { data } = useGetServicesQuery('')
  useEffect(() => {
    console.log(data)
  }, [data])

  return (
    <>
      <Helmet>
        <meta
          name="description"
          content="Услуги опытного юриста от компании LegaLex. Мы предлагаем полную поддержку бизнеса, услуги юриста, HR, бухгалтера и экономиста."
        />
        <title>
          Юридическая компания LegaLex - Услуги юриста, HR, бухгалтера и экономиста в Минске
        </title>
      </Helmet>
      <section id="Services" className="relative mb-8 mt-8 flex justify-center p-4 md:mt-16">
        <div className="container">
          <h1 className="text-xl text-blue_light lg:ml-[0.17rem]">Услуги</h1>
          <h3 className="text-2xl sm:text-4xl lg:text-6xl">
            Комплексные
            <span className="font-medium text-blue_light"> решения </span>
            для вас и вашего бизнеса
          </h3>
          <div className="mt-16 grid grid-cols-1 gap-12 sm:grid-cols-1 md:grid-cols-2 2xl:grid-cols-3">
            {/* {data.map((service) => {
              return <ServiceCard key={service.id} {...service} />
            })} */}

            {data?.data.map((service, index) => {
              return (
                <ServiceCard
                  id={service.attributes.ServiceCard.Link}
                  key={index}
                  preview_image={`${process.env.REACT_APP_STRAPI_HOST}${service.attributes.ServiceCard.CardBackground.data.attributes.url}`}
                  caption={service.attributes.Title}
                />
              )
            })}
          </div>
        </div>
      </section>
    </>
  )
}

export default ServicesList
