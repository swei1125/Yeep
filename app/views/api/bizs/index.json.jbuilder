@bizs.each do |biz|
  json.set! biz.id do 
    json.partial! "api/bizs/biz", biz: biz
    json.photo url_for(biz.top_photo)
  end
end
