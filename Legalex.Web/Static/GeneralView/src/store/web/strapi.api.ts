import { createApi, fetchBaseQuery } from '@reduxjs/toolkit/query/react'
import { IContacts } from '../../modules/contact'
import { ICollectionRoot } from '../../modules'
import { IService, ISlide } from '../../modules/services'

//@ts-ignore
const STRAPI_HOST = process.env.REACT_APP_STRAPI_HOST
const STRAPI_TOKEN = process.env.REACT_APP_STRAPI_TOKEN

export const strapiApi = createApi({
  reducerPath: 'strapi/api',
  baseQuery: fetchBaseQuery({
    baseUrl: `${STRAPI_HOST}/api/`,
    prepareHeaders: (headers) => {
      headers.set('authorization', `Bearer ${STRAPI_TOKEN}`)
    },
  }),

  endpoints: (builder) => ({
    getServiceSlides: builder.query<ICollectionRoot<ISlide>, string>({
      query: () => ({
        url: 'slides?populate=Slide',
      }),
    }),
    getServiceNames: builder.query<ICollectionRoot<IService>, string>({
      query: () => ({
        url: 'services?fields=Title',
      }),
    }),
    getAllServiceLinks: builder.query<ICollectionRoot<IService>, string>({
      query: () => ({
        url: 'services?populate=ServiceCard',
      }),
    }),
    getAllServiceCards: builder.query<ICollectionRoot<IService>, string>({
      query: () => ({
        url: 'services?populate=ServiceCard.CardBackground',
      }),
    }),
    getService: builder.query<ICollectionRoot<IService>, string>({
      query: (id) => ({
        url: `services?populate=Tabs.Tables.Row&filters[ServiceCard][Link][$eq]=${id}`,
      }),
    }),
  }),
})

export const { useGetServiceSlidesQuery } = strapiApi
export const { useGetServiceNamesQuery } = strapiApi
export const { useGetAllServiceLinksQuery } = strapiApi
export const { useGetAllServiceCardsQuery } = strapiApi
export const { useGetServiceQuery } = strapiApi
