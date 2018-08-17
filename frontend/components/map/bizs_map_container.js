import { connect } from 'react-redux';
import BizsMap from './bizs_map';

const mapStateToProps = state => ({
  bizs: Object.values(state.entities.bizs)
});



export default connect(mapStateToProps)(BizsMap);
