import React from 'react';
import {Provider} from 'react-redux';
import {HashRouter, Route} from 'react-router-dom';
import { PersistGate } from 'redux-persist/integration/react';
import { persistor } from '../store/store.jsx';
import App from './app';

// <PersistGate loading={null} persistor={persistor}>
// </PersistGate>
const Root = ({store}) => (
  <Provider store={store}>
      <HashRouter>
          <App />
      </HashRouter>
  </Provider>
);

export default Root;
