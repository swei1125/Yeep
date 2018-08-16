import React from 'react';
import { Link } from 'react-router-dom';
import NavBarContainer from '../navbar/nav_bar_container';
import BizInfo from './biz_info';
import MapBox from './map_box';
import PicBox from './pic_box';
import SideBar from './side_bar';

class BizShow extends React.Component {

  componentDidMount() {
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
      priceRange,
      viewerIds,
    } = this.props.biz;
    console.log(this.props);
    return(
      <div className='bizshow-main'>
        <NavBarContainer singleBiz={this.props.singleBiz}/>
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
                userIds={Object.keys(this.props.users)}
                currentUserId={this.props.currentUserId}
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
            <div className='biz-reviews'>
              <h2>
                Recommended Reviews
                <span>{` for ${name}`}</span>
              </h2>
              <ul className='review-list'>
                {this.props.reviews.map(review =>  {
                  const user = this.props.users[review.userId];
                  return (
                    <li className='review' key={review.id}>
                      <div className='review-wrapper'>
                        <div className='user-info'>
                          <div className='profile-img'></div>
                          <div className='info'>
                            <li className='name'>
                              <a>{`${user.firstName} ${user.lastName[0]}.`}</a>
                            </li>
                          </div>
                        </div>
                        <div className='review-info'></div>
                      </div>
                    </li>

                  );}
                )}
              </ul>
            </div>
            <SideBar moreInfo={this.props.moreInfo} price={price} priceRange={priceRange}/>

          </div>
        </div>
      </div>
    );
  }
}

export default BizShow;
