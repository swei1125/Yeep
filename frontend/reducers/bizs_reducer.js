import { RECEIVE_SINGLE_BIZ, RECEIVE_BIZS } from '../actions/biz_actions';

const bizsReducer = (state = {}, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_SINGLE_BIZ:
      return action.biz;
    case RECEIVE_BIZS:
      return action.bizs;
    default:
      return state;
  }
};

export default bizsReducer;
