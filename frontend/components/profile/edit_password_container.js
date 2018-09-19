import { connect } from 'react-redux';
import { updateCurrentUserInfo } from '../../actions/user_actions';
import EditPassword from './edit_password';

const mapStateToProps = state => ({
  user: state.session.currentUser
});

const mapDispathToProps = dispatch => ({
  updateCurrentUserInfo: (id, user) => dispatch(updateCurrentUserInfo(id, user))
});

export default connect(mapStateToProps, mapDispathToProps)(EditPassword);
