@reviews.each do |review|
  json.set! review.id do
    json.extract! review, :id, :rating, :created_at, :body
    json.bizId review.biz.id
    json.bizName review.biz.name
    json.zip review.biz.zip
    json.state review.biz.state
    json.address review.biz.address
    json.city review.biz.city
    json.price review.biz.price
    json.tags review.biz.tags.map { |tag| tag.name }
  end
end
