import { configureStore } from '@reduxjs/toolkit'
import { contactApi } from './web/contact.api'
import { strapiApi } from './web/strapi.api'

export const store = configureStore({
  reducer: {
    [contactApi.reducerPath]: contactApi.reducer,
    [strapiApi.reducerPath]: strapiApi.reducer,
  },
  middleware: (getDefaultMiddleware) =>
    getDefaultMiddleware().concat(contactApi.middleware, strapiApi.middleware),
})

export type RootState = ReturnType<typeof store.getState>
