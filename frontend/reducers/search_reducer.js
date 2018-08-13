import merge from 'lodash/merge';
import { UPDATE_SEARCH } from '../actions/search_actions';

const defaultSearch = {
  location: "",
  search_temr: "",
  price: ""
};

const searchReducer = (state = defaultSearch, action) => {
  Object.freeze(state);
  switch (action.type) {
    case UPDATE_SEARCH:
      return merge({}, state, {[action.searchKey]: action.searchValue});
    default:
      return state;
  }
};

export default searchReducer;
