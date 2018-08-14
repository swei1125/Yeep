import { connect } from 'react-redux';
import { withRouter } from 'react-router-dom';
import { changeSearch } from '../../actions/search_actions';
import { fetchBizs } from '../../actions/biz_actions';
import Home from './home';


const mapDispatchToProps = dispatch => ({
  fetchBizs: (data) => dispatch(fetchBizs(data)),
  changeSearch: (search) => dispatch(changeSearch(search))
});

export default connect(null, mapDispatchToProps)(Home);
