import * as ReviewAPI from '../utils/review';
import { receiveSingleBiz } from './biz_actions';

export const REMOVE_REVIEW = 'DELETE_REVIEW';
export const RECEIVE_REVIEW_ERRORS = 'RECEIVE_REVIEW_ERRORS';
export const CLEAR_REVIEW_ERRORS = 'CLEAR_REVIEW_ERRORS';
export const RECEIVE_USER_REVIEWS = 'RECEIVE_USER_REVIEWS';

export const receiveUserReviews = (reviews) => ({
  type: RECEIVE_USER_REVIEWS,
  reviews
});

export const removeReview = () => ({
  type: REMOVE_REVIEW
});

export const receiveReviewErrors = (err) => ({
  type: RECEIVE_REVIEW_ERRORS,
  err
});

export const clearReviewErrors = () => ({
  type: CLEAR_REVIEW_ERRORS
});

export const fetchUserReviews = id => dispatch => (
  ReviewAPI.fetchUserReviews(id)
  .then(reviews => dispatch(receiveUserReviews(reviews)))
);

export const createReview = (review, bizId) => dispatch => (
  ReviewAPI.createReview(review, bizId)
  .then(
    newBizInfo => dispatch(receiveSingleBiz(newBizInfo)),
    err => dispatch(receiveReviewErrors(err.responseJSON))
  )
);

export const deleteReview = (id) => dispatch => (
  ReviewAPI.deleteReview(id)
  .then(() => dispatch(removeReview()))
);

export const updateReview = (review) => dispatch => (
  ReviewAPI.updateReview(review)
  .then(
    newBizInfo => dispatch(receiveSingleBiz(newBizInfo)),
    err => dispatch(receiveReviewErrors(err.responseJSON))
  )
);
