import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import Root from './components/root';
import {signup, login} from './actions/session_actions';
import {fetchBiz} from './actions/biz_actions';



document.addEventListener("DOMContentLoaded", () => {
  const root = document.getElementById("root");
  let preloadedState = undefined;
  if (window.currentUser) {
    preloadedState = {session:{
      currentUser: window.currentUser
    }};
  }

  const store = configureStore(preloadedState);

  window.getState = store.getState;
  window.dispatch = store.dispatch;
  window.fetchBiz = fetchBiz;


  ReactDOM.render(<Root store={store} />, root);
});
