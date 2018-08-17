import React from 'react';
import NavBarContainer from '../navbar/nav_bar_container';
import ReviewSearchBarContainer from './review_searchbar_container';
import BizsMapContainer from '../map/bizs_map_container';
import BizIndexContainer from './bizs_index_container';

class ReviewSearchResult extends React.Component {

  render() {
    return(
      <div className='review-search-main'>
        <NavBarContainer />
        <div className='top-shelf'>
          <div className='top-wrapper'>
            <div className='top-left'>
              <h1>Your First Review Awaits</h1>
              <p>Review your favorite businesses and share your experiences with our community.</p>
              <ReviewSearchBarContainer />
            </div>
            <div className='top-img'>
              <img src={window.images.review_results} />
            </div>
          </div>
        </div>
        <div className='heading'><h2>See the business you’d like to review?</h2></div>
        <div className='main-content'>
          <BizIndexContainer />
          <div className='map-column'>
            <div className='map-box'>
              <BizsMapContainer />
            </div>
          </div>
        </div>
      </div>
    );
  }
}

export default ReviewSearchResult;
