import React from 'react';
import ReviewDetail from './review_detail';
import { Link } from 'react-router-dom';
import NavBarContainer from '../navbar/nav_bar_container';
import BizInfo from './biz_info';
import MapBox from './map_box';
import PicBox from './pic_box';
import SideBar from './side_bar';

class BizShow extends React.Component {
  componentWillMount() {
    this.props.fetchBiz(this.props.match.params.bizId);
  }

  render() {
    if (!this.props.biz.tagNames) {
      return null;
    }
    const {
      id,
      name,
      address,
      city,
      state,
      zip,
      price,
      phoneNumber,
      tagNames,
      rating,
      reviewCount,
      priceRange
    } = this.props.biz;

    return(
      <div className='bizshow-main'>
        <NavBarContainer />
        <div className='biz-wrapper'>
          <div className='gray-shelf'>

            <div className='bizshow'>
              <BizInfo
                id={id}
                name={name}
                rating={rating}
                reviewCount={reviewCount}
                price={price}
                tagNames={tagNames}
              />
              <div className='map-pic'>
                <MapBox
                  address={address}
                  city={city}
                  state={state}
                  zip={zip}
                  phoneNumber={phoneNumber}
                />

                <PicBox photos={this.props.photos} />
              </div>
              <div className='all-pic'>
                <span>
                  <i className="material-icons all-pic-icon">photo_library</i>
                  <a>
                    See all &nbsp;{this.props.photos.length}
                  </a>
                </span>
              </div>
            </div>
          </div>
          <div className='bizshow-bottom'>
            <div className='biz-review'>Reviews</div>
            <SideBar moreInfo={this.props.moreInfo} price={price} priceRange={priceRange}/>

          </div>
        </div>
      </div>
    );
  }
}

export default BizShow;
