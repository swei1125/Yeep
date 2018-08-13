import React from 'react';
import { Link } from 'react-router-dom';

class BizInfo extends React.Component {

  render() {
    const { name, reviewCount, price, tagNames, rating } = this.props;
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
            <span>{tagNames.map((tag, i) => <a key={i}>{tag}</a>)}</span>
          </section>
        </div>
        <div className='info-right'>
          <button className='review-btn'>
            <span>
              <i className="material-icons star">star</i>
              Write a Review
            </span>
          </button>
          <button className='photo-btn'>
            <Link to={`/bizs/${this.props.id}/add_photo`}>
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
