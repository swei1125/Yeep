import { connect } from 'react-redux';
import { withRouter } from 'react-router-dom';
import UploadPhoto from './upload_photo';
import { fetchBiz } from '../../actions/biz_actions';

const mapStateToProps = state => ({
  name: state.entities.bizs.name,
});

const mapDispatchToProps = dispatch => ({
  fetchBiz: (id) => dispatch(fetchBiz(id))
});

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(UploadPhoto));
