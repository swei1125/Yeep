import { connect } from 'react-redux';
import { withRouter } from 'react-router-dom';
import BizsIndex from './biz_index';
import { clearSearch } from '../../actions/search_actions';

const mapStateToProps = state => ({
  bizs: Object.values(state.entities.bizs),
  search: state.entities.search
});

const mapDispatchToProps = dispatch => ({
  clearSearch: () => dispatch(clearSearch())
});

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(BizsIndex));
