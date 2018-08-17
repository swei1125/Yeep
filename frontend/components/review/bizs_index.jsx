import React from 'react';
import { Link } from 'react-router-dom';

const BizsIndex = ({bizs, currentUserId}) => (
  <div className='bizs-column'>
    <ul className='bizs-list'>
      {bizs.map((biz, idx) => {
        if (!biz.tagNames) return null;
        const {
          id,
          address,
          city,
          name,
          phoneNumber,
          photo,
          rating,
          price,
          reviewCount,
          state,
          tagNames,
          topReview,
          zip} = biz;
        const starPos = {
          0: "0 -240px",
          1: "0 -258px",
          1.5: "0 -276px",
          2: "0 -294px",
          2.5: "0 -312px",
          3: "0 -330px",
          3.5: "0 -348px",
          4: "0 -366px",
          4.5: "0 -384px",
          5: "0 -402px"
        };
        const reviewBtn = biz.viewerIds.includes(currentUserId) ? 'Update your Review' : 'Write a Review';
        const url = reviewBtn === 'Write a Review' ? (
          `/writereview/${id}&${name}`
        ) : (`/editreview/${id}&${name}`);
        return (
        <li className='review-bizs' key={idx}>
          <div className='biz-wrapper'>
            <div className='pic-wrapper'>
              <img src={biz.photo}/>
            </div>
            <div className='info-wrapper'>
              <div className='info-top'>
                <div className='info-left'>
                  <h1>
                    <span>{idx+1}.</span>
                    &nbsp;
                    <span>{name}</span>
                  </h1>
                  <section className='review'>
                    <div className='star' style={{backgroundPosition: starPos[rating]}}></div>
                    <span className='review-count'>{reviewCount} reviews</span>
                  </section>
                  <section className='price-tag'>
                    <span className='price-span'>{price}</span>

                    <span>
                      {tagNames.map((tag, i) => (
                        <span className='tag' key={i}>{tag}</span>
                      ))}
                    </span>
                  </section>
                  <button className='review-btn'>
                    <Link to={url}>
                      <span>
                        <i className="material-icons star">star</i>
                        {reviewBtn}
                      </span>
                    </Link>
                  </button>
                </div>
                <div className='info-right'>
                  <span>{phoneNumber}</span>
                  <span>{address}</span>
                  <span>{city},&nbsp;{state}</span>
                </div>
              </div>
            </div>
          </div>
        </li>
      );})}
    </ul>
  </div>
);


export default BizsIndex;
