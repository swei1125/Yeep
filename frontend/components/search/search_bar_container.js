import { connect } from 'react-redux';
import { withRouter } from 'react-router-dom';
import { fetchBizs } from '../../actions/biz_actions';
import SearchBar from './search_bar';

const mapDispatchToProps = dispatch => ({
  fetchBizs: (data) => dispatch(fetchBizs(data)),
});

export default withRouter(connect(null, mapDispatchToProps)(SearchBar));
