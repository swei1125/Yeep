import * as BizAPI from '../utils/biz';

export const RECEIVE_SINGLE_BIZ = "RECEIVE_SINGLE_BIZ";
export const RECEIVE_BIZS = "RECEIVE_BIZS";

export const receiveSingleBiz = ({biz, tags, reviews, users, photos, moreInfo}) =>({
  type: RECEIVE_SINGLE_BIZ,
  biz,
  tags,
  reviews,
  users,
  photos,
  moreInfo
});

export const receiveBizs = bizs => ({
  type: RECEIVE_BIZS,
  bizs
});

export const fetchBiz = (id) => dispatch => (
  BizAPI.fetchBiz(id)
  .then(bizInfo => dispatch(receiveSingleBiz(bizInfo)))
);

export const fetchBizs = (searches) => dispatch => (
  BizAPI.fetchBizs(searches)
  .then(bizs => dispatch(receiveBizs(bizs)))
);
