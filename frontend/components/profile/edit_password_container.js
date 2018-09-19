import { connect } from 'react-redux';
import { withRouter } from 'react-router-dom';
import { updatePassword, clearPasswordErrors } from '../../actions/user_actions';
import EditPassword from './edit_password';

const mapStateToProps = state => ({
  user: state.session.currentUser,
  errors: state.errors.password
});

const mapDispathToProps = dispatch => ({
  updatePassword: (id, data) => dispatch(updatePassword(id, data)),
  clearPasswordErrors: () => dispatch(clearPasswordErrors)
});

export default withRouter(connect(mapStateToProps, mapDispathToProps)(EditPassword));
