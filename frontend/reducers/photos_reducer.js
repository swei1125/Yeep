import { RECEIVE_SINGLE_BIZ } from '../actions/biz_actions';

const photosReducer = (state = {}, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_SINGLE_BIZ:
      return action.photos;

    default:
      return state;
  }
};

export default photosReducer;
