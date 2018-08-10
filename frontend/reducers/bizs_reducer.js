import { RECEIVE_SINGLE_BIZ } from '../actions/biz_actions';

const bizsReducer = (state = {}, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_SINGLE_BIZ:
      return action.biz;

    default:
      return state;
  }
};

export default bizsReducer;
