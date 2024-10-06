import { createApi, fetchBaseQuery } from '@reduxjs/toolkit/query/react'
import { IContacts } from '../../modules/contact'

export const contactApi = createApi({
  reducerPath: 'contactApi',
  baseQuery: fetchBaseQuery({
    // baseUrl: `https://localhost:7179/`,
    // baseUrl:
    //   process.env.NODE_ENV === 'production'
    //     ? `https://api.legalex.by`
    //     : 'https://localhost:7179/',
    baseUrl: process.env.REACT_APP_BASE_URL,
  }),

  endpoints: (builder) => ({
    sendFeedback: builder.mutation({
      query: (body: IContacts) => {
        return {
          url: 'order',
          method: 'POST',
          body: JSON.stringify(body),
          headers: {
            'Content-Type': 'application/json',
          },
        }
      },
    }),
  }),
})

export const { useSendFeedbackMutation } = contactApi
