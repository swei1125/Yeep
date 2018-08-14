import { connect } from 'react-redux';
import { withRouter } from 'react-router-dom';
import { fetchBizs } from '../../actions/biz_actions';
import Home from './home';


const mapDispatchToProps = dispatch => ({
  fetchBizs: (data) => dispatch(fetchBizs(data)),
});

export default connect(null, mapDispatchToProps)(Home);
