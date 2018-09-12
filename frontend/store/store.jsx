import {createStore, applyMiddleware} from 'redux';
import logger from 'redux-logger';
import thunk from 'redux-thunk';
import rootReducer from '../reducers/root_reducer';
// import { persistStore, persistReducer } from 'redux-persist';
// import storage from 'redux-persist/lib/storage';

const configureStore = (preloadedState = {}) =>(
  createStore(rootReducer, preloadedState, applyMiddleware(thunk, logger))
);

export default configureStore;
