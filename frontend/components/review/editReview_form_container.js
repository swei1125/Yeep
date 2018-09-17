import { connect } from 'react-redux';
import { withRouter } from 'react-router-dom';
import { createReview, updateReview, clearReviewErrors } from '../../actions/review_actions';
import ReviewForm from './review_form';
import { fetchBiz } from '../../actions/biz_actions';
import { getSingleReview } from '../../reducers/selector';
import { updateCurrentUser } from '../../actions/user_actions';


const msg = {
  1: "Eek! Methinks not.",
  2: "Meh. I've experienced better.",
  3: "A-OK.",
  4: "Yay! I'm a fan.",
  5: "Woohoo! As good as it gets!"
};
const starPos = {
  1: "0 -30px",
  2: "0 -60px",
  3: "0 -90px",
  4: "0 -120px",
  5: "0 -150px"
};

const mapStateToProps = (state, ownProps) => {
  const review = getSingleReview(state);
  if (!review) return {formType: 'edit', reviewState: {}};
  return{
    currentUserId: state.session.currentUser.id,
    formType: 'edit',
    errors: state.errors.review,
    reviewState: Object.assign(
      {}, review, { msg: msg[review.rating], starPos: starPos[review.rating]}
    )
  };
};

const mapDispatchToProps = dispatch => ({
  action: (review) => dispatch(updateReview(review)),
  clearReviewErrors: () => dispatch(clearReviewErrors),
  fetchBiz: (id) => dispatch(fetchBiz(id)),
  updateCurrentUser: id => dispatch(updateCurrentUser(id))
});

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(ReviewForm));
