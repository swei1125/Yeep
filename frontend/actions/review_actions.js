import * as ReviewAPI from '../utils/review';
import { receiveSingleBiz } from './biz_actions';

export const REMOVE_REVIEW = 'DELETE_REVIEW';

export const removeReview = () => ({
  type: REMOVE_REVIEW
});

export const createReview = (review, bizId) => dispatch => (
  ReviewAPI.createReview(review, bizId)
  .then( newBizInfo => dispatch(receiveSingleBiz(newBizInfo)) )
);

export const deleteReview = (id) => dispatch => (
  ReviewAPI.deleteReview(id)
  .then(() => dispatch(removeReview()))
);

export const updateReview = (review) => dispatch => (
  ReviewAPI.updateReview(review)
  .then( newBizInfo => dispatch(receiveSingleBiz(newBizInfo)) )
);
