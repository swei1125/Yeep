import { connect } from 'react-redux';
import { withRouter } from 'react-router-dom';
import { updateCurrentUser } from '../../actions/user_actions';
import ProfilePhoto from './profile_photo';

const mapStateToProps = state => ({
  currentUserId: state.session.currentUser.id
});

const mapDispatchToProps = dispatch => ({
  updateCurrentUser: (id) => dispatch(updateCurrentUser(id))
});

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(ProfilePhoto));
