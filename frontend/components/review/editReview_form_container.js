import { connect } from 'react-redux';
import { withRouter } from 'react-router-dom';
import { createReview, updateReview } from '../../actions/review_actions';
import ReviewForm from './review_form';

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

const mapStateToProps = (state, ownProps) => ({
  formType: 'edit',
  reviewState: {
    body: state.entities.reviews[ownProps.match.params.bizId].body,
    rating: state.entities.reviews[ownProps.match.params.bizId].rating,
    msg: msg[state.entities.reviews[ownProps.match.params.bizId].rating],
    starPos: starPos[state.entities.reviews[ownProps.match.params.bizId].rating]
  }
});

const mapDispatchToProps = dispatch => ({
  action: (review) => dispatch(updateReview(review)),
});

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(ReviewForm));
