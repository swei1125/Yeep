import React from 'react';
import { Link } from 'react-router-dom';

class BizInfo extends React.Component {

  render() {
    const { id, name, reviewCount, price, tagNames, rating, userIds, currentUserId } = this.props;
    const starPos = {
      0: "0 0px",
      1: "0 -24px",
      1.5: "0 -48px",
      2: "0 -72px",
      2.5: "0 -96px",
      3: "0 -120px",
      3.5: "0 -144px",
      4: "0 -168px",
      4.5: "0 -192px",
      5: "0 -216px"
    };
    const starPx = starPos[rating];
    const reviewBtn = userIds.includes(`${currentUserId}`) ? 'Update your Review' : 'Write a Review';
    const url = reviewBtn === 'Write a Review' ? (
      `/writereview/${id}&${name}`
    ) : (`/editreview/${id}&${name}`);
    return(
      <div className='biz-info'>
        <div className='info-left'>
          <h1>{name}</h1>
          <section className='review'>
            <div className='star' style={{backgroundPosition: starPx}}></div>
            <span className='review-count'>{reviewCount} reviews</span>
          </section>
          <section className='price-tag'>
            <span>{price}</span>
            &nbsp;·&nbsp;
            <span>
              {tagNames.map((tag, i) => (
                <Link className='tag' to={`/search/${tag}&default`} key={i}>{tag}</Link>))}
            </span>
          </section>
        </div>
        <div className='info-right'>
          <Link to={url}>
            <button className='review-btn'>
                <span>
                  <i className="material-icons star">star</i>
                  {reviewBtn}
                </span>
            </button>
        </Link>
          <button className='photo-btn'>
            <Link to={`/bizs/${id}/add_photo`}>
              <span>
                <i className="material-icons camera">camera_enhance</i>
                Add Photo
              </span>
            </Link>
          </button>
        </div>
      </div>
    );
  }
}

export default BizInfo;
