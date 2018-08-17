import { connect } from 'react-redux';
import BizsIndex from './bizs_index';

const mapStateToProps = state => ({
  bizs: Object.values(state.entities.bizs),
  currentUserId: state.session.currentUser ? state.session.currentUser.id : null
});

export default connect(mapStateToProps)(BizsIndex);
