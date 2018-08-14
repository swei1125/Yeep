import { connect } from 'react-redux';
import { withRouter } from 'react-router-dom';
import { updateSearch, changeSearch } from '../../actions/search_actions';
import { fetchBizs } from '../../actions/biz_actions';
import SearchBar from './search_bar';


const mapStateToProps = ({ entities }) => ({
  search: entities.search,
});

const mapDispatchToProps = dispatch => ({
  fetchBizs: (data) => dispatch(fetchBizs(data)),
  changeSearch: (search) => dispatch(changeSearch(search))
});

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(SearchBar));
