import { connect } from 'react';
import ReviewSearchResult from './review_search_result';

const mapStateToProps = state => ({
  bizs: state.entities.bizs
});

export default connect(mapStateToProps)(ReviewSearchResult);
