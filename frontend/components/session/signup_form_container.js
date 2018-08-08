import {connect} from 'react-redux';
import {signup, clearSessionErrors} from '../../actions/session_actions';
import SessionForm from './session_form';
import {withRouter} from 'react-router-dom';

const mapStateToProps = (state, ownProps) => ({
  user: {email: "", first_name: "", last_name: "", password: ""},
  formType: "Sign Up",
  errors: state.errors.session
});

const mapDispatchToProps = dispatch => ({
  action: (user) => dispatch(signup(user)),
  clearSessionErrors: () => dispatch(clearSessionErrors())
});

export default withRouter(
  connect(mapStateToProps, mapDispatchToProps)(SessionForm)
);
