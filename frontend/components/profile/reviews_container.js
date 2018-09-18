import { connect } from 'react-redux';
import { withRouter } from 'react-router-dom';
import Reviews from './reviews';
import { deleteReview, fetchUserReviews } from '../../actions/review_actions';

const mapStateToProps = state => ({
  reviews: Object.values(state.entities.reviews),
  user: state.session.currentUser
});

const mapDispatchToProps = dispatch => ({
  deleteReview: (id) => dispatch(deleteReview(id)),
  fetchUserReviews: (id) => dispatch(fetchUserReviews(id))
});

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(Reviews));
