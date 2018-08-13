import { connect } from 'react-redux';
import { updateSearch } from '../../actions/search_actions';
import SearchBar from './search_bar';


const mapStateToProps = ({ entities: { search } }) => ({
  search_term: search.search_term,
  location: search.location
});

const mapDispatchToProps = dispatch => ({
  updateSearch: (searchKey, searchValue) => dispatch(updateSearch(searchKey,searchValue))
});

export default connect(mapStateToProps, mapDispatchToProps)(SearchBar);
