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

export const sortActivities = user => {
  if (user.recentReviews && user.recentPhotos) {
    const reviews = Object.values(user.recentReviews);
    const photos = Object.values(user.recentPhotos);
    const arr = reviews.concat(photos).sort((a, b) => {
      return (new Date(b.date) - new Date(a.date));
    });
    return arr;

  }else if (user.recentReviews) {
    return Object.values(user.recentReviews);

  }else if (user.recentPhotos) {
    return Object.values(user.recentPhotos);
  }else{
    return [];
  }
};
