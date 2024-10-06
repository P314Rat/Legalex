import ReactDOM from 'react-dom/client'
import { HelmetProvider } from 'react-helmet-async'
import Router from './components/Router'
import { BrowserRouter } from 'react-router-dom'
import { Provider } from 'react-redux'
import { store } from './store'

import './tailwind.css'

const root = ReactDOM.createRoot(document.getElementById('root') as HTMLElement)

root.render(
  <Provider store={store}>
    <HelmetProvider context={{}}>
      <BrowserRouter>
        <Router />
      </BrowserRouter>
    </HelmetProvider>
  </Provider>
)
