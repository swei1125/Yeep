import React from 'react';
import NavBarContainer from '../navbar/nav_bar_container';
import ReviewSearchBarContainer from './review_searchbar_container';


class ReviewSearch extends React.Component {

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
              <img src={window.images.review_search} />
            </div>
          </div>
        </div>
        <div className='white-space'></div>
      </div>
    );
  }
}

export default ReviewSearch;
