import * as ReviewAPI from '../utils/review';

export const RECEIVE_NEW_REVIEW = 'RECEIVE_NEW_REVIEW';
export const REMOVE_REVIEW = 'DELETE_REVIEW';

export const receiveNewReview = ({reviews, users}) => ({
  type: RECEIVE_NEW_REVIEW,
  reviews,
  users
});

export const removeReview = () => ({
  type: REMOVE_REVIEW
});

export const createReview = (bizId, review) => dispatch => (
  ReviewAPI.createReview(bizId, review)
  .then( newBizInfo => dispatch(receiveNewReview(newBizInfo)) )
);

export const deleteReview = (id) => dispatch => (
  ReviewAPI.deleteReview(id)
  .then(() => dispatch(removeReview()))
);

export const updateReview = (review) => dispatch => (
  ReviewAPI.updateReview(review)
  .then( newBizInfo => dispatch(receiveNewReview(newBizInfo)) )
);
