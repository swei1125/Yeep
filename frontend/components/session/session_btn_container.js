import {connect} from 'react-redux';
import {logout} from '../../actions/session_actions';
import { login } from '../../actions/session_actions';
import SessionBtn from './session_btn';

const mapStateToProps = state => ({
  currentUser: state.session.currentUser,
  guest: {email: 'guest@email.com' , password: 'guest_login'}
});

const mapDispatchToProps = dispatch => ({
  logout: () => dispatch(logout()),
  login: (guest) => dispatch(login(guest))
});

export default connect(mapStateToProps, mapDispatchToProps)(SessionBtn);
