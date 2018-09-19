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
    window.scrollTo(0, 0);
  }

  translateDate(str) {
    let date = str.split("T")[0];
    date = date.split("-");
    date = [date[1]].concat([date[2]]).concat([date[0]]);
    if (date[0][0] === '0') date[0] = date[0][1];
    return date.join('/');
  }

  removeReview(id) {
    return ((e) => {
      this.props.deleteReview(id)
      .then(() => this.props.fetchBiz(this.props.match.params.bizId));
    });
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
      latitude,
      longitude
    } = this.props.biz;
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
                  lat={latitude}
                  lng={longitude}
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
                {this.props.reviews.map((review, idx) =>  {
                  const starPx = {
                    1: '0 -258px',
                    2: '0 -294px',
                    3: '0 -330px',
                    4: '0 -366px',
                    5: '0 -402px'
                  };
                  const user = this.props.users[review.userId];
                  const reviews = user.reviewsCount > 1 ? 'reviews' : 'review';
                  const photos = user.photoCount ? (
                    <section className='photo-count'>

                      <i className="material-icons camera">camera_alt</i>

                      <span>{user.photoCount}</span>
                      <span className='light-weight'>
                        {user.photoCount > 1 ? 'photos' : 'photo'}
                      </span>
                    </section>
                  ) : ("");
                  const btnDsiplay = (idx !== 0 || this.props.currentUserId !== review.userId) ? ("none") : ('inline-block');
                  return (
                    <li className='review' key={idx}>
                      <div className='review-wrapper'>
                        <div className='user-info'>
                          <div className='profile-img'>
                            <img src={this.props.users[review.userId].profileImg}/>
                          </div>
                          <div className='info'>
                            <section className='name'>
                              <a>{`${user.firstName} ${user.lastName[0]}.`}</a>
                            </section>
                            <section className='review-count'>
                              <div className='icon'>
                                <i className="material-icons">star</i>
                              </div>
                              <span>{user.reviewsCount}</span>
                              <span className='light-weight'>{`${reviews}`}</span>
                            </section>
                            {photos}
                          </div>
                        </div>
                        <div className='review-info'>
                          <div className='review-content'>
                            <div className='rate'>
                              <div className='stars'
                                style={{backgroundPosition: `${starPx[review.rating]}`}}
                                ></div>
                              <span className='create-date'>
                                {this.translateDate(review.createdAt)}
                              </span>
                            </div>
                            <p className='body'>{review.body}</p>
                          </div>
                          <div className='review-footer clearfix'>
                            <div className='btn-wrap' style={{display: `${btnDsiplay}`}}>
                              <Link to={`/editreview/${id}&${name}`} className='btn'>
                                <i className="fas fa-pencil-alt"></i>
                              </Link>
                            </div>
                            <div className='btn-wrap last'>
                              <button
                                className='btn'
                                style={{display: `${btnDsiplay}`}}
                                onClick={this.removeReview(review.id)}
                              >
                                <i className="fas fa-trash-alt"></i>
                              </button>
                            </div>
                          </div>
                        </div>
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
