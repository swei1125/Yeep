import {
  RECEIVE_CURRENT_USER,
  LOGOUT_CURRENT_USER
} from '../actions/session_actions';

const _nullSession = { currentUser: null };
const sessionReducer = (state = _nullSession, action) => {
  
  switch(action.type) {
    case RECEIVE_CURRENT_USER:
      return {currentUser: action.user};
    case LOGOUT_CURRENT_USER:
      return _nullSession;
    default:
      return state;
  }

};

export default sessionReducer;
