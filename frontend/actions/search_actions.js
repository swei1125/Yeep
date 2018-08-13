import { fetchBizs } from './biz_actions';

export const UPDATE_SEARCH = 'UPDATE_SEARCH';

export const changeSearch = (searchKey, searchValue) => ({
  type: UPDATE_SEARCH,
  searchKey,
  searchValue
});

export const updateSearch = (searchKey, searchValue) => (dispatch, getState) => {
  dispatch(changeSearch(searchKey, searchValue));
  return fetchBizs(getState().entities.search)(dispatch);
};
