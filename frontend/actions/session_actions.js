import * as SessionAPI from '../utils/session';

export const RECEIVE_CURRENT_USER = "RECEIVE_CURRENT_USER";
export const LOGOUT_CURRENT_USER = "LOGOUT_CURRENT_USER";
export const RECEIVE_SESSION_ERRORS = "RECEIVE_SESSION_ERRORS";
export const CLEAR_SESSION_ERRORS = "CLEAR_SESSION_ERRORS";

export const receiveCurrentUser = user => ({
  type: RECEIVE_CURRENT_USER,
  user
});

export const logoutCurrentUser = () => ({
  type: LOGOUT_CURRENT_USER
});

export const receiveSessionErrors = errors => ({
  type: RECEIVE_SESSION_ERRORS,
  errors
});

export const clearSessionErrors = () => ({
  type: CLEAR_SESSION_ERRORS,
});

export const signup = user => dispatch => (
  SessionAPI.signup(user)
  .then(
    currentUser => {
      dispatch(receiveCurrentUser(currentUser));
      dispatch(clearSessionErrors());
    },
    err => dispatch(receiveSessionErrors(err.responseJSON))
  )
);

export const login = user => dispatch => (
  SessionAPI.login(user)
  .then(
    currentUser => {
      dispatch(receiveCurrentUser(currentUser));
      dispatch(clearSessionErrors());
    },
    err => dispatch(receiveSessionErrors(err.responseJSON))
  )
);

export const logout = () => dispatch => (
  SessionAPI.logout()
  .then(() => dispatch(logoutCurrentUser()))
);
