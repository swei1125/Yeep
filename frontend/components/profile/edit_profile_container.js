import { connect } from 'react-redux';
import { updateCurrentUserInfo } from '../../actions/user_actions';
import EditProfile from './edit_profile';

const mapStateToProps = state => ({
  user: state.session.currentUser
});

const mapDispathToProps = dispatch => ({
  updateCurrentUserInfo: (id, user) => dispatch(updateCurrentUserInfo(id, user))
});

export default connect(mapStateToProps, mapDispathToProps)(EditProfile);
