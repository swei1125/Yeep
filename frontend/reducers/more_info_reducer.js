import { RECEIVE_SINGLE_BIZ } from '../actions/biz_actions';
import { CLEAR_ALL } from '../actions/home_actions';

const moreInfoReducer = (state = {}, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_SINGLE_BIZ:
      return action.moreInfo;
    case CLEAR_ALL:
      return {};
    default:
      return state;
  }
};

export default moreInfoReducer;
