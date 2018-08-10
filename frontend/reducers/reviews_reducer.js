import { RECEIVE_SINGLE_BIZ } from '../actions/biz_actions';

const reviewsReducer = (state = {}, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_SINGLE_BIZ:
      return action.reviews;

    default:
      return state;
  }
};

export default reviewsReducer;
