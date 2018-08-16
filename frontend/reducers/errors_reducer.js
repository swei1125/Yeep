import { RECEIVE_SESSION_ERRORS, CLEAR_SESSION_ERRORS } from '../actions/session_actions';
import { RECEIVE_REVIEW_ERRORS, CLEAR_REVIEW_ERRORS } from '../actions/review_actions';
const defaultState = {
  session: [],
  review: []
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
    case CLEAR_REVIEW_ERRORS:
      return Object.assign({}, state, {review: []});
    default:
      return defaultState;
  }
};

export default errorsReducer;
