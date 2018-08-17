import {createStore, applyMiddleware} from 'redux';

import thunk from 'redux-thunk';
import rootReducer from '../reducers/root_reducer';
import { persistStore, persistReducer } from 'redux-persist';
import storage from 'redux-persist/lib/storage';

const persistConfig = {key: 'root', storage};

const persistedReducer = persistReducer(persistConfig, rootReducer);

const configureStore = (preloadedState = {}) =>(
  createStore(rootReducer, preloadedState, applyMiddleware(thunk))
);

// export default () => {
//   let store = createStore(persistedReducer, preloadedState={}, applyMiddleware(thunk, logger));
//   let persistor = persistStore(configureStore);
//   return { configureStore, persistor };
// };

export default configureStore;
