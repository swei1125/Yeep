import { RECEIVE_SINGLE_BIZ } from '../actions/biz_actions';
import { CLEAR_ALL } from '../actions/home_actions';
import { RECEIVE_USER_REVIEWS } from '../actions/review_actions';

const reviewsReducer = (state = {}, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_SINGLE_BIZ:
      return action.reviews;
    case RECEIVE_USER_REVIEWS:
      return action.reviews;
    case CLEAR_ALL:
      return {};
    default:
      return state;
  }
};

export default reviewsReducer;
