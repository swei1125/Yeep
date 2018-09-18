import { connect } from 'react-redux';
import TopShelf from './top_shelf';

const mapStateToProps = state => ({
  user: state.session.currentUser
});

export default connect(mapStateToProps)(TopShelf);
