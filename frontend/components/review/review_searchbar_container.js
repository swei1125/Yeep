import { connect } from 'react-redux';
import { withRouter } from 'react-router-dom';
import { fetchBizs } from '../../actions/biz_actions';
import ReviewSearchBar from './review_searchbar';

const mapDispatchToProps = dispatch => ({
  fetchBizs: (data) => dispatch(fetchBizs(data)),
});

export default withRouter(connect(null, mapDispatchToProps)(ReviewSearchBar));
