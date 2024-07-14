import React from 'react'
import { Helmet } from 'react-helmet-async'
import ServiceCard from './ServiceCard'

const list = [
  {
    id: 'legal',
    preview_image: '/images/service1.webp',
    caption: 'Юридические услуги',
  },
  {
    id: 'hr',
    preview_image: '/images/service2.webp',
    caption: 'HR-услуги',
  },
  {
    id: 'economy',
    preview_image: '/images/service3.webp',
    caption: 'Услуги экономиста',
  },
  {
    id: 'accounting',
    preview_image: '/images/service4.webp',
    caption: 'Бухгалтерские услуги',
  },
]

const ServicesList = () => {
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
            {list.map((service) => {
              return <ServiceCard key={service.id} {...service} />
            })}
          </div>
        </div>
      </section>
    </>
  )
}

export default ServicesList
