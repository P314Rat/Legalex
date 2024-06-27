import { createApi, fetchBaseQuery } from '@reduxjs/toolkit/query/react'
import { IContacts } from '../../modules/contact'

const HOST = 'legalex.by'
//process.env.REACT_APP_HOST

export const contactApi = createApi({
  reducerPath: 'contactApi',
  baseQuery: fetchBaseQuery({
    baseUrl: `https://api.${HOST}/`,
  }),

  endpoints: (builder) => ({
    sendFeedback: builder.mutation({
      query: (body: IContacts) => {
        console.log(body)

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
