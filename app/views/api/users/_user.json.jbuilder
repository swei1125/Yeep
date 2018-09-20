json.extract! user, :id, :email, :first_name, :last_name, :review_ids
json.img url_for(user.profile_img)
json.review_count user.reviews.length
json.photo_count user.uploads.length
json.recent_photos do
  user.recent_uploads.each do |up|
    json.set! up.id do
      json.url url_for(up.photo)
      json.biz up.biz.name
      json.bizId up.biz.id
      json.date up.created_at
    end
  end
end
json.recent_reviews do
  user.recent_reviews.each do |r|
    json.set! r.id do
      json.biz r.biz.name
      json.bizId r.biz.id
      json.body r.body
      json.rating r.rating
      json.date r.created_at
    end
  end
end
