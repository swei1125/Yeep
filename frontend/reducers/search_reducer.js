import merge from 'lodash/merge';
import { UPDATE_SEARCH, CLEAR_SEARCH } from '../actions/search_actions';
import { RECEIVE_SINGLE_BIZ } from '../actions/biz_actions';

const defaultSearch = {
  location: "",
  search_term: "",
  price: ""
};

const searchReducer = (state = defaultSearch, action) => {
  Object.freeze(state);
  switch (action.type) {
    case UPDATE_SEARCH:
      return action.search;
    case CLEAR_SEARCH:
      return defaultSearch;
    default:
      return state;
  }
};

export default searchReducer;
