json.biz do
  json.partial! "api/bizs/biz", biz: @biz
  json.tags do
    json.array! @biz.tags do |tag|
      tag.name
    end
  end
  json.photoUrls do
    json.array! @biz.photos do |photo|
      url_for(photo)
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
      json.profile_img url_for(user.profile_pic)
      json.reviewsCount user.reviews.length
      json.photoCount user.photos.length
    end
  end
end
