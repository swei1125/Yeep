import {RECEIVE_CURRENT_USER} from '../actions/session_actions';

const usersReducer = (state = {}, action) => {
  Object.freeze(state);
  return state;

};

export default usersReducer;
