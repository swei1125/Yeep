@bizs.each do |biz|
  json.partial! "api/bizs/biz", biz: biz
  json.photo url_for(biz.top_photo)
end 
