import { connect } from 'react-redux';
import Profile from './profile';
import { sortActivities } from '../../reducers/selector';

const mapStateToProps = state => ({
  user: state.session.currentUser,
  activities: sortActivities(state.session.currentUser)
});

export default connect(mapStateToProps)(Profile);
