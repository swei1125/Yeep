export const getSingleReview = (reviews, currentUserId) => {
  return reviews.filter(review => review.userId === currentUserId)[0];
};
