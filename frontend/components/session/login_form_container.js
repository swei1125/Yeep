import {connect} from 'react-redux';
import {login, clearSessionErrors} from '../../actions/session_actions';
import SessionForm from './session_form';
import {withRouter} from 'react-router-dom';

const mapStateToProps = (state, ownProps) => ({
  user: {email: "", password: ""},
  formType: "Log In",
  errors: state.errors.session
});

const mapDispatchToProps = dispatch => ({
  action: (user) => dispatch(login(user)),
  clearSessionErrors: () => dispatch(clearSessionErrors())
});

export default withRouter(
  connect(mapStateToProps, mapDispatchToProps)(SessionForm)
);
