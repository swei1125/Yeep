import { RECEIVE_SINGLE_BIZ } from '../actions/biz_actions';

const moreInfoReducer = (state = {}, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_SINGLE_BIZ:
      return action.moreInfo;

    default:
      return state;
  }
};

export default moreInfoReducer;
