import {combineReducers} from 'redux';
import usersReducer from './users_reducer';
import bizsReducer from './bizs_reducer';
import reviewsReducer from './reviews_reducer';
import photosReducer from './photos_reducer';
import moreInfoReducer from './more_info_reducer';

const entitiesReducer = combineReducers({
  users: usersReducer,
  bizs: bizsReducer,
  reviews: reviewsReducer,
  photos: photosReducer,
  bizMoreInfo: moreInfoReducer,
});

export default entitiesReducer;
