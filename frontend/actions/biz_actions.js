import * as BizAPI from '../utils/biz';

export const RECEIVE_SINGLE_BIZ = "RECEIVE_SINGLE_BIZ";

export const receiveSingleBiz = ({biz, tags, reviews, users, photos}) =>({
  type: RECEIVE_SINGLE_BIZ,
  biz,
  tags,
  reviews,
  users,
  photos
});

export const fetchBiz = (id) => dispatch => (
  BizAPI.fetchBiz(id)
  .then(bizInfo => dispatch(receiveSingleBiz(bizInfo)))
);
