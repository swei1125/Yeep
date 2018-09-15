json.extract! user, :id, :email, :first_name, :last_name, :review_ids
json.img url_for(user.profile_img)
json.photo_count user.uploads.length
json.reviews_count user.reviews.length
