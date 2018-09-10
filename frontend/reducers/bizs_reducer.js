import { RECEIVE_SINGLE_BIZ, RECEIVE_BIZS } from '../actions/biz_actions';
import { CLEAR_ALL } from '../actions/home_actions';

const bizsReducer = (state = {}, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_SINGLE_BIZ:
      return action.biz;
    case RECEIVE_BIZS:
      return action.bizs;
    case CLEAR_ALL:
      return {};
    default:
      return state;
  }
};

export default bizsReducer;
