import React from 'react';

const ReviewDetail = ({review, user}) => {
  return(
    <div>
      <div>
        <h3>{user.firstName}&nbsp;{user.lastName}</h3>
        <li>{user.reviewsCount}&nbsp;reviews</li>
        <li>{user.photoCount}&nbsp;photos</li>
      </div>

      <div>
        <h3>rating:&nbsp; {review.rating}</h3>
        <p>{review.body}</p>
      </div>

    </div>
  );
};

export default ReviewDetail;
