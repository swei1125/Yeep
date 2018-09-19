import { getCurrentUser, editCurrentUserInfo } from '../utils/user';
import { receiveCurrentUser } from './session_actions';

export const updateCurrentUser = (id) => dispatch => (
  getCurrentUser(id)
  .then(user => dispatch(receiveCurrentUser(user)))
);

export const updateCurrentUserInfo = (id, user) => dispatch => (
  editCurrentUserInfo(id, user)
  .then(newUser => dispatch(receiveCurrentUser(newUser)))
);
