export const getSingleReview = (state) => {
  const reviews = state.entities.reviews;
  const currentUserId = state.session.currentUser.id;
  return reviews[currentUserId];
};

export const sortedReviews = (state) => {
  const currentUser = state.session.currentUser;
  const currentUserId = currentUser ? currentUser.id : null;
  if (currentUserId) {
    const idx = Object.keys(state.entities.reviews).indexOf(`${currentUserId}`);
    const reviews = Object.values(state.entities.reviews);
    if (idx === -1) {
      return reviews;
    }else {
      return reviews.slice(idx, idx+1).concat(reviews.slice(0, idx)).concat(reviews.slice(idx+1));
    }
  }else {
    return Object.values(state.entities.reviews);
  }
};
