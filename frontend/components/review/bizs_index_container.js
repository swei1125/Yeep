import { connect } from 'react-redux';
import BizsIndex from './bizs_index';

const mapStateToProps = state => ({
  bizs: Object.values(state.entities.bizs),
  currentUserId: state.session.currentUser.id
});

export default connect(mapStateToProps)(BizsIndex);
