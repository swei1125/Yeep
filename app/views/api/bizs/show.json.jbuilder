json.biz do
  json.partial! "api/bizs/biz", biz: @biz
end

json.photos do
  @biz.uploads.each do |up|
    json.set! up.id do
      json.url url_for(up.photo)
      json.user_id up.user_id
      json.biz_id up.biz_id
    end
  end
end

json.reviews do
  @biz.reviews.each do |review|
    json.set! review.id do
      json.extract! review, :id, :user_id, :body, :rating
    end
  end
end

json.users do
  @biz.viewers.each do |user|
    json.set! user.id do
      json.extract! user, :id, :email, :first_name, :last_name
      # json.profile_img url_for(user.profile_img)
      json.reviewsCount user.reviews.length
      json.photoCount user.uploads.length
    end
  end
end