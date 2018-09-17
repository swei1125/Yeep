import { connect } from 'react-redux';
import { withRouter } from 'react-router-dom';
import UploadPhoto from './upload_photo';
import { fetchBiz } from '../../actions/biz_actions';
import { updateCurrentUser } from '../../actions/user_actions';

const mapStateToProps = state => ({
  name: state.entities.bizs.name,
  currentUserId: state.session.currentUser.id
});

const mapDispatchToProps = dispatch => ({
  fetchBiz: (id) => dispatch(fetchBiz(id)),
  updateCurrentUser: (id) => dispatch(updateCurrentUser(id))
});

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(UploadPhoto));
