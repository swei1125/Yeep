
User.destroy_all
Biz.destroy_all
Review.destroy_all
Tag.destroy_all
Tagging.destroy_all
Upload.destroy_all

load 'db/seeds/01_users.rb'
load 'db/seeds/02_bizs.rb'
load 'db/seeds/bakeries.rb'
load 'db/seeds/03_reviews.rb'
load 'db/seeds/04_tags.rb'
load 'db/seeds/05_uploads.rb'
