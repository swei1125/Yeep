import {RECEIVE_SESSION_ERRORS, CLEAR_SESSION_ERRORS} from '../actions/session_actions';

const defaultState = {
  session: [],
};

const errorsReducer = (state = defaultState, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_SESSION_ERRORS:
      return Object.assign({}, state, {session: action.errors});
    case CLEAR_SESSION_ERRORS:
      return Object.assign({}, state, {session: []});
    default:
      return defaultState;
  }
};

export default errorsReducer;
