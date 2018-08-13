# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(
  email: 'guest@email.com',
  password:'guest_login',
  first_name:'Guest',
  last_name: 'Yeep'
)

user1 = User.create(email:'123email', password:'123456', first_name:'user1', last_name:'wei')
user2 = User.create(email:'121email', password:'123456', first_name:'user2', last_name:'wei')
user3 = User.create(email:'122email', password:'123456', first_name:'user3', last_name:'wei')
user4 = User.create(email:'124email', password:'123456', first_name:'user4', last_name:'wei')
user5 = User.create(email:'125email', password:'123456', first_name:'user5', last_name:'wei')
user6 = User.create(email:'126email', password:'123456', first_name:'user6', last_name:'wei')
user7 = User.create(email:'127email', password:'123456', first_name:'user7', last_name:'wei')

biz1 = Biz.create!(
  name:'Cocobang',
  price:'$$',
  address:'550 Taylor St',
  city: 'San Francisco',
  state: 'CA',
  zip: 94102,
  latitude: 37.787649,
  longitude: -122.411500,
  phone_number: "(415) 292-5144",
  user_id: 1,
  price_range: '$11-30',
  reservation: 'No',
  delivery: 'No',
  take_out: 'Yes',
  credit_card: 'Yes',
  apple_pay: 'No',
  google_pay: 'No',
  good_for: 'Late Night',
  parking: 'Street',
  bike_parking: 'No',
  for_kids: 'No',
  for_group: 'Yes',
  attier: 'Casual',
  outdoor_seat: 'No',
  wifi: 'No',
  has_tv: 'Yes',
  waiter_service: 'Yes',
  caters: 'No',
  dog_allowed: 'No',
  hours: [
    ["17:30", "2:00"],
    ["17:30", "2:00"],
    ["17:30", "2:00"],
    ["17:30", "2:00"],
    ["17:30", "2:00"],
    ["17:30", "4:00"],
    ["17:30", "4:00"]
  ]
)

review1 = Review.create!(user_id: user1.id, biz_id: 1, body: 'Nice Place!', rating: 5)
review2 = Review.create!(user_id: user2.id, biz_id: 1, body: 'Nice Place!', rating: 4)
review3 = Review.create!(user_id: user3.id, biz_id: 1, body: 'Nice Place!', rating: 3)
review4 = Review.create!(user_id: user4.id, biz_id: 1, body: 'Nice Place!', rating: 2)
review5 = Review.create!(user_id: user5.id, biz_id: 1, body: 'Nice Place!', rating: 1)

tag1 = Tag.create!(name: 'Korean')
taggings1 = Tagging.create!(tag_id: tag1.id, biz_id: biz1.id)

up1 = Upload.create(user_id: user1.id, biz_id: biz1.id)
up1.photo.attach(io: File.open("/Users/amon/Desktop/yeep_img/biz1_img1.jpg"), filename:"biz1_img1.jpg")

up2 = Upload.create(user_id: user2.id, biz_id: biz1.id)
up2.photo.attach(io: File.open("/Users/amon/Desktop/yeep_img/biz1_img2.jpg"), filename:"biz1_img2.jpg")

up3 = Upload.create(user_id: user3.id, biz_id: biz1.id)
up3.photo.attach(io: File.open("/Users/amon/Desktop/yeep_img/biz1_img3.jpg"), filename:"biz1_img3.jpg")

up4 = Upload.create(user_id: user4.id, biz_id: biz1.id)
up4.photo.attach(io: File.open("/Users/amon/Desktop/yeep_img/biz1_img4.jpg"), filename:"biz1_img4.jpg")

up5 = Upload.create(user_id: user5.id, biz_id: biz1.id)
up5.photo.attach(io: File.open("/Users/amon/Desktop/yeep_img/biz1_img5.jpg"), filename:"biz1_img5.jpg")

up6 = Upload.create(user_id: user6.id, biz_id: biz1.id)
up6.photo.attach(io: File.open("/Users/amon/Desktop/yeep_img/biz1_img6.jpg"), filename:"biz1_img6.jpg")
