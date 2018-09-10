import { RECEIVE_CURRENT_USER } from '../actions/session_actions';
import { RECEIVE_SINGLE_BIZ } from '../actions/biz_actions';
import { CLEAR_ALL } from '../actions/home_actions';

const usersReducer = (state = {}, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_SINGLE_BIZ:
      return action.users;
    case CLEAR_ALL:
      return {};
    default:
      return state;
  }
};

export default usersReducer;
