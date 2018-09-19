import { RECEIVE_SESSION_ERRORS, CLEAR_SESSION_ERRORS } from '../actions/session_actions';
import { RECEIVE_REVIEW_ERRORS, CLEAR_REVIEW_ERRORS } from '../actions/review_actions';
import { RECEIVE_PASSWORD_ERROR, CLEAR_PASSWORD_ERROR } from '../actions/user_actions';
const defaultState = {
  session: [],
  review: [],
  password: []
};

const errorsReducer = (state = defaultState, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_SESSION_ERRORS:
      return Object.assign({}, state, {session: action.errors});
    case CLEAR_SESSION_ERRORS:
      return Object.assign({}, state, {session: []});
    case RECEIVE_REVIEW_ERRORS:
      return Object.assign({}, state, {review: action.err});
    case RECEIVE_PASSWORD_ERROR:
      return Object.assign({}, state, {password: action.error});
    case CLEAR_PASSWORD_ERROR:
      return  Object.assign({}, state, {password: []});
    case CLEAR_REVIEW_ERRORS:
      return Object.assign({}, state, {review: []});
    default:
      return defaultState;
  }
};

export default errorsReducer;
