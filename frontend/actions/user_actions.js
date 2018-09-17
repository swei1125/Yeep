import { getCurrentUser } from '../utils/user';
import { receiveCurrentUser } from './session_actions';

export const updateCurrentUser = (id) => dispatch => (
  getCurrentUser(id)
  .then(user => dispatch(receiveCurrentUser(user)))
);
