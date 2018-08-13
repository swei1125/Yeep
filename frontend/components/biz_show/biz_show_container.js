import { connect } from 'react-redux';
import { withRouter } from 'react-router';
import BizShow from './biz_show';
import { fetchBiz } from '../../actions/biz_actions';

const mapStateToProps = ({entities}) => ({
  biz: entities.bizs,
  moreInfo: entities.bizMoreInfo,
  photos: Object.values(entities.photos),
  reviews: Object.values(entities.reviews),
  users: entities.users
});

const mapDispatchToProps = dispatch => ({
  fetchBiz: (id) => dispatch(fetchBiz(id))
});

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(BizShow));
