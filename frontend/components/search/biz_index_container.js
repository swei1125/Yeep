import { connect } from 'react-redux';
import { withRouter } from 'react-router-dom';
import BizsIndex from './biz_index';
import { fetchBizs } from '../../actions/biz_actions';

const mapStateToProps = state => ({
  bizs: Object.values(state.entities.bizs),
  singleBiz: false
});

export default withRouter(connect(mapStateToProps)(BizsIndex));
