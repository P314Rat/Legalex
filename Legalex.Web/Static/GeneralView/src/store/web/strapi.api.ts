import { createApi, fetchBaseQuery } from '@reduxjs/toolkit/query/react'
import { IContacts } from '../../modules/contact'
import { ICollectionRoot } from '../../modules'
import { IService } from '../../modules/services'

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
    getServices: builder.query<ICollectionRoot<IService>, string>({
      query: () => ({
        url: 'services?populate=ServiceCard.CardBackground&populate=tabs.Tables.Row',
      }),
    }),
  }),
})

export const { useGetServicesQuery } = strapiApi
