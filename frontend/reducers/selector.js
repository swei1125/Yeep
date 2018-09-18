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
  if (user.reviews && user.photos) {
    const reviews = Object.values(user.reviews);
    const photos = Object.values(user.photos);
    const arr = reviews.concat(photos).sort((a, b) => {
      return (new Date(b.date) - new Date(a.date));
    });
    const today = new Date;

    return arr.filter(el => {
      return today - new Date(el.date) <= 7689600000;
    });

  }else if (user.reviews) {
    const today = new Date;
    return Object.values(user.reviews).filter(el => {
      today - new Date(el.date) <= 7689600000;
    });
  }else if (user.photos) {
    const today = new Date;
    return Object.values(user.photos).filter(el => {
      today - new Date(el.date) <= 7689600000;
    });
  }else{
    return [];
  }
};
