import { connect } from 'react-redux';
import { withRouter } from 'react-router';
import BizShow from './biz_show';
import { fetchBiz } from '../../actions/biz_actions';

const mapStateToProps = (state) => {
  const currentUser = state.session.currentUser;
  return {
    biz: state.entities.bizs,
    moreInfo: state.entities.bizMoreInfo,
    photos: Object.values(state.entities.photos),
    reviews: Object.values(state.entities.reviews),
    users: state.entities.users,
    currentUserId: currentUser ? currentUser.id : null,
    singleBiz: true
  };
};

const mapDispatchToProps = dispatch => ({
  fetchBiz: (id) => dispatch(fetchBiz(id))
});

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(BizShow));
