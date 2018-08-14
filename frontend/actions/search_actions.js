import { fetchBizs } from './biz_actions';

export const UPDATE_SEARCH = 'UPDATE_SEARCH';
export const CLEAR_SEARCH = 'CLEAR_SEARCH';

export const changeSearch = (search) => ({
  type: UPDATE_SEARCH,
  search
});

export const clearSearch = () => ({
  type: CLEAR_SEARCH,
});

export const updateSearch = () => (dispatch, getState) => {
  // dispatch(changeSearch(searchKey, searchValue));
  return fetchBizs(getState().entities.search)(dispatch);
};
