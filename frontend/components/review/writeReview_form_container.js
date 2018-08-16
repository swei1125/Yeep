import { connect } from 'react-redux';
import { withRouter } from 'react-router-dom';
import { createReview, updateReview, clearReviewErrors } from '../../actions/review_actions';
import ReviewForm from './review_form';

const mapStateToProps = state => ({
  reviewState: {body:"", rating: 0, msg: "Select your rating", starPos: '0 0'},
  formType: 'create',
  errors: state.errors.review
});

const mapDispatchToProps = dispatch => ({
  action: (review, bizId) => dispatch(createReview(review, bizId)),
  clearReviewErrors: () => dispatch(clearReviewErrors())
});

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(ReviewForm));
