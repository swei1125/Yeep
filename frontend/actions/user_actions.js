import { getCurrentUser, editCurrentUserInfo, changePassword } from '../utils/user';
import { receiveCurrentUser } from './session_actions';

export const RECEIVE_PASSWORD_ERROR = "RECEIVE_PASSWORD_ERROR";
export const CLEAR_PASSWORD_ERROR = "CLEAR_PASSWORD_ERROR";

export const receivePasswordError = error => ({
  type: RECEIVE_PASSWORD_ERROR,
  error
});

export const clearPasswordErrors = () => ({
  type: CLEAR_PASSWORD_ERROR
});

export const updateCurrentUser = (id) => dispatch => (
  getCurrentUser(id)
  .then(user => dispatch(receiveCurrentUser(user)))
);

export const updateCurrentUserInfo = (id, user) => dispatch => (
  editCurrentUserInfo(id, user)
  .then(newUser => dispatch(receiveCurrentUser(newUser)))
);

export const updatePassword = (id, data) => dispatch => (
  changePassword(id, data)
  .then(
    user => dispatch(receiveCurrentUser(user)),
    err => dispatch(receivePasswordError(err.responseJSON))
  )
);
