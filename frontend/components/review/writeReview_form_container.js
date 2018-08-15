import { connect } from 'react-redux';
import { withRouter } from 'react-router-dom';
import { createReview, updateReview } from '../../actions/review_actions';
import ReviewForm from './review_form';

const mapStateToProps = state => ({
  reviewState: {body:"", rating: 0, msg: "Select your rating", starPos: '0 0'},
  formType: 'create',
});

const mapDispatchToProps = dispatch => ({
  action: (review, bizId) => dispatch(createReview(review, bizId)),
});

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(ReviewForm));
