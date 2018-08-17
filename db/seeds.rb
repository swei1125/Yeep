
User.destroy_all
Biz.destroy_all
Review.destroy_all
Tag.destroy_all
Tagging.destroy_all
Upload.destroy_all

User.create(
  email: 'guest@email.com',
  password:'guest_login',
  first_name:'Guest',
  last_name: 'Yeep'
)

user1 = User.create(email:'1@gmail.com', password:'123456', first_name:'John', last_name:'Doe')
user2 = User.create(email:'2@gmail.com', password:'123456', first_name:'Jane', last_name:'Doe')
user3 = User.create(email:'3@gmail.com', password:'123456', first_name:'Eden', last_name:'Lin')
user4 = User.create(email:'4@gmail.com', password:'123456', first_name:'Elmer', last_name:'Yang')
user5 = User.create(email:'5@gmail.com', password:'123456', first_name:'Joseph', last_name:'Cheng')
user6 = User.create(email:'6@gmail.com', password:'123456', first_name:'Jimmy', last_name:'Huang')
user7 = User.create(email:'7@gmail.com', password:'123456', first_name:'Jack', last_name:'He')
user8 = User.create(email:'8@gmail.com', password:'123456', first_name:'Vivian', last_name:'Chang')
user9 = User.create(email:'9@gmail.com', password:'123456', first_name:'Jane', last_name:'Jin')
user10 = User.create(email:'10@gmail.com', password:'123456', first_name:'Jackson', last_name:'West')
user11 = User.create(email:'11@gmail.com', password:'123456', first_name:'Johnson', last_name:'D.')
user12 = User.create(email:'12@gmail.com', password:'123456', first_name:'Stein', last_name:'Wei')
user13 = User.create(email:'13@gmail.com', password:'123456', first_name:'Wesley', last_name:'Foster')
user14 = User.create(email:'14@gmail.com', password:'123456', first_name:'Brian', last_name:'Neilson')
user15 = User.create(email:'15@gmail.com', password:'123456', first_name:'Nick', last_name:'H.')

user1.profile_img.attach(io: File.open("./app/assets/images/user_img/user1_img1.jpg"), filename:"user1_img1.jpg")
user2.profile_img.attach(io: File.open("./app/assets/images/user_img/user2_img1.jpg"), filename:"user2_img1.jpg")
user3.profile_img.attach(io: File.open("./app/assets/images/user_img/user3_img1.jpg"), filename:"user3_img1.jpg")
user4.profile_img.attach(io: File.open("./app/assets/images/user_img/user4_img1.jpg"), filename:"user4_img1.jpg")
user5.profile_img.attach(io: File.open("./app/assets/images/user_img/user5_img1.jpg"), filename:"user5_img1.jpg")
user6.profile_img.attach(io: File.open("./app/assets/images/user_img/user6_img1.jpg"), filename:"user6_img1.jpg")
user7.profile_img.attach(io: File.open("./app/assets/images/user_img/user7_img1.jpg"), filename:"user7_img1.jpg")
user8.profile_img.attach(io: File.open("./app/assets/images/user_img/user8_img1.jpg"), filename:"user8_img1.jpg")
user9.profile_img.attach(io: File.open("./app/assets/images/user_img/user9_img1.jpg"), filename:"user9_img1.jpg")
user10.profile_img.attach(io: File.open("./app/assets/images/user_img/user10_img1.jpg"), filename:"user10_img1.jpg")
user11.profile_img.attach(io: File.open("./app/assets/images/user_img/user11_img1.jpg"), filename:"user11_img1.jpg")
user12.profile_img.attach(io: File.open("./app/assets/images/user_img/user12_img1.jpg"), filename:"user12_img1.jpg")
user13.profile_img.attach(io: File.open("./app/assets/images/user_img/user13_img1.jpg"), filename:"user13_img1.jpg")
user14.profile_img.attach(io: File.open("./app/assets/images/user_img/user14_img1.jpg"), filename:"user14_img1.jpg")
user15.profile_img.attach(io: File.open("./app/assets/images/user_img/user15_img1.jpg"), filename:"user15_img1.jpg")

biz1 = Biz.create!(
  name:'Cocobang',
  category: 'Restaurants',
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

biz2 = Biz.create!(
  name:'Homeroom',
  category: 'Restaurants',
  price:'$$',
  address:'440 40th St',
  city: 'Oakland',
  state: 'CA',
  zip: 94609,
  latitude: 37.828595,
  longitude: -122.259886,
  phone_number: "(510) 597-0400",
  user_id: 2,
  price_range: '$11-30',
  reservation: 'No',
  delivery: 'No',
  take_out: 'Yes',
  credit_card: 'Yes',
  apple_pay: 'No',
  google_pay: 'No',
  good_for: 'Lunch, Dinner',
  parking: 'Street',
  bike_parking: 'Yes',
  for_kids: 'Yes',
  for_group: 'Yes',
  attier: 'Casual',
  outdoor_seat: 'Yes',
  wifi: 'No',
  has_tv: 'No',
  waiter_service: 'Yes',
  caters: 'Yes',
  dog_allowed: 'Yes',
  hours: [
    ["11:00", "22:00"],
    ["11:00", "22:00"],
    ["11:00", "22:00"],
    ["11:00", "22:00"],
    ["11:00", "22:00"],
    ["11:00", "22:00"],
    ["11:00", "22:00"]
  ]
)

biz3 = Biz.create!(
  name:'Ushi Taro',
  category: 'Restaurants',
  price:'$$',
  address:'1382 9th Ave',
  city: 'San Francisco',
  state: 'CA',
  zip: 94122,
  latitude: 37.762570,
  longitude:  -122.466024,
  phone_number: "(415) 702-6014",
  user_id: 1,
  price_range: '$11-30',
  reservation: 'No',
  delivery: 'No',
  take_out: 'Yes',
  credit_card: 'Yes',
  apple_pay: 'Yes',
  google_pay: 'Yes',
  good_for: 'Lunch, Dinner',
  parking: 'Street',
  bike_parking: 'Yes',
  for_kids: 'Yes',
  for_group: 'Yes',
  attier: 'Casual',
  outdoor_seat: 'No',
  wifi: 'No',
  has_tv: 'No',
  waiter_service: 'Yes',
  caters: 'No',
  dog_allowed: 'No',
  hours: [
    ["17:00", "21:30"],
    ["17:00", "21:30"],
    ["17:00", "21:30"],
    ["17:00", "21:30"],
    ["17:00", "21:30"],
    ["11:30", "14:30"],
    ["11:30", "14:30"]
  ]
)
biz4 = Biz.create!(
  name:'Mensho Tokyo',
  category: 'Restaurants',
  price:'$$',
  address:'672 Geary St',
  city: 'San Francisco',
  state: 'CA',
  zip: 94102,
  latitude: 37.786714,
  longitude:  -122.414321,
  phone_number: "(415) 800-8345",
  user_id: 1,
  price_range: '$11-30',
  reservation: 'No',
  delivery: 'No',
  take_out: 'No',
  credit_card: 'Yes',
  apple_pay: 'No',
  google_pay: 'No',
  good_for: 'Dinner',
  parking: 'Street',
  bike_parking: 'No',
  for_kids: 'No',
  for_group: 'No',
  attier: 'Casual',
  outdoor_seat: 'No',
  wifi: 'No',
  has_tv: 'Yes',
  waiter_service: 'Yes',
  caters: 'No',
  dog_allowed: 'No',
  hours: [
    ["17:00", "23:30"],
    ["17:00", "23:30"],
    ["17:00", "23:30"],
    ["17:00", "23:30"],
    ["17:00", "23:30"],
    ["17:00", "23:30"],
    ["17:00", "23:30"]
  ]
)
biz5 = Biz.create!(
  name:'Boba Guys',
  category: 'Tea Shop',
  price:'$',
  address:'429 Stockton St',
  city: 'San Francisco',
  state: 'CA',
  zip: 94108,
  latitude: 37.790017,
  longitude:  -122.407326,
  phone_number: "(415) 967-2622",
  user_id: 1,
  price_range: 'Inexpensive',
  reservation: 'No',
  delivery: 'No',
  take_out: 'Yes',
  credit_card: 'Yes',
  apple_pay: 'Yes',
  google_pay: 'Yes',
  good_for: 'Drinks',
  parking: 'Street',
  bike_parking: 'Yes',
  for_kids: 'Yes',
  for_group: 'Yes',
  attier: 'Casual',
  outdoor_seat: 'No',
  wifi: 'No',
  has_tv: 'No',
  waiter_service: 'No',
  caters: 'Yes',
  dog_allowed: 'No',
  hours: [
    ["8:00", "21:00"],
    ["8:00", "21:00"],
    ["8:00", "21:00"],
    ["8:00", "21:00"],
    ["8:00", "22:00"],
    ["12:00", "22:00"],
    ["12:00", "18:00"]
  ]
)
biz6 = Biz.create!(
  name:'Urban Rital',
  category: 'Tea Shop',
  price:'$',
  address:'488 Fell St',
  city: 'San Francisco',
  state: 'CA',
  zip: 94102,
  latitude: 37.775706,
  longitude:  -122.425856,
  phone_number: "(415) 590-2873",
  user_id: 1,
  price_range: 'Under $10',
  reservation: 'No',
  delivery: 'No',
  take_out: 'Yes',
  credit_card: 'Yes',
  apple_pay: 'Yes',
  google_pay: 'No',
  good_for: 'Dessert',
  parking: 'Street',
  bike_parking: 'No',
  for_kids: 'Yes',
  for_group: 'Yes',
  attier: 'Casual',
  outdoor_seat: 'No',
  wifi: 'Free',
  has_tv: 'No',
  waiter_service: 'No',
  caters: 'No',
  dog_allowed: 'No',
  hours: [
    ["12:00", "22:00"],
    ["12:00", "22:00"],
    ["12:00", "22:00"],
    ["12:00", "22:00"],
    ["12:00", "22:00"],
    ["12:00", "22:00"],
    ["12:00", "22:00"]
  ]
)
biz7 = Biz.create!(
  name:'Ryoko\'s',
  category: 'Restaurants',
  price:'$$',
  address:'619 Taylor St',
  city: 'San Francisco',
  state: 'CA',
  zip: 94102,
  latitude: 37.788170,
  longitude:  -122.412045,
  phone_number: "(415) 775-1028",
  user_id: 1,
  price_range: '$11-30',
  reservation: 'No',
  delivery: 'No',
  take_out: 'No',
  credit_card: 'Yes',
  apple_pay: 'No',
  google_pay: 'No',
  good_for: 'Dinner, Late Night',
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
    ["18:00", "2:00"],
    ["18:00", "2:00"],
    ["18:00", "2:00"],
    ["18:00", "2:00"],
    ["18:00", "2:00"],
    ["18:00", "2:00"],
    ["18:00", "2:00"]
  ]
)
biz8 = Biz.create!(
  name:'Saru Sushi Bar',
  category: 'Restaurants',
  price:'$$$',
  address:'3856 24th St',
  city: 'San Francisco',
  state: 'CA',
  zip: 94102,
  latitude: 37.751815,
  longitude:  -122.428786,
  phone_number: "(415) 440-4510",
  user_id: 1,
  price_range: '$31-80',
  reservation: 'No',
  delivery: 'No',
  take_out: 'No',
  credit_card: 'Yes',
  apple_pay: 'No',
  google_pay: 'No',
  good_for: 'Dinner',
  parking: 'Street',
  bike_parking: 'No',
  for_kids: 'No',
  for_group: 'No',
  attier: 'Casual',
  outdoor_seat: 'Yes',
  wifi: 'No',
  has_tv: 'No',
  waiter_service: 'Yes',
  caters: 'No',
  dog_allowed: 'No',
  hours: [
    ["17:30", "21:30"],
    ["17:30", "21:30"],
    ["17:30", "21:30"],
    ["17:30", "21:30"],
    ["17:30", "22:30"],
    ["17:30", "22:30"],
    ["17:30", "21:30"]
  ]
)
review1 = Review.create!(user_id: user1.id, biz_id: 1,
  body: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec maximus nisi lorem, at consectetur augue malesuada eu. Mauris vulputate ante magna, iaculis viverra lacus ultrices ut. Proin sed elit erat. Quisque malesuada aliquam mollis. Integer luctus semper orci sed iaculis. Morbi pulvinar nibh a mi lacinia sodales. Morbi varius in dolor nec congue. Fusce egestas eros et ex tempor maximus. Praesent ac nulla mattis, rutrum ex id, consectetur mauris. Cras tellus dolor, placerat at feugiat gravida, mattis vitae odio. Etiam malesuada, arcu ac molestie ullamcorper, neque orci blandit dui, et pellentesque felis ante non justo. Nunc nec quam dui. Phasellus egestas vestibulum congue. Nullam congue lectus id mauris pretium, consequat porttitor turpis pellentesque. Phasellus fermentum, eros quis consectetur ultrices, quam arcu interdum purus, sollicitudin maximus nisl dolor id augue. Proin eu elit sagittis, congue orci eget, aliquet velit.',
  rating: 5)
review2 = Review.create!(user_id: user2.id, biz_id: 1, body: 'Nice PlaceNice PlaceNice PlaceNice PlaceNice PlaceNice PlaceNice PlaceNice PlaceNice PlaceNice PlaceNice PlaceNice PlaceNice Place!', rating: 2)
review3 = Review.create!(user_id: user3.id, biz_id: 1, body: 'Nice PlaceNice PlaceNice PlaceNice PlaceNice PlaceNice PlaceNice PlaceNice PlaceNice PlaceNice PlaceNice PlaceNice PlaceNice Place!', rating: 3)
review4 = Review.create!(user_id: user4.id, biz_id: 1, body: 'Nice Place!Nice PlaceNice PlaceNice PlaceNice PlaceNice PlaceNice PlaceNice PlaceNice PlaceNice PlaceNice PlaceNice PlaceNice Place', rating: 2)
review5 = Review.create!(user_id: user5.id, biz_id: 1, body: 'Nice PlaceNice PlaceNice PlaceNice PlaceNice PlaceNice PlaceNice Place!', rating: 2)

review6 = Review.create!(user_id: user1.id, biz_id: 2, body: 'Nice PlaceNice PlaceNice PlaceNice PlaceNice PlaceNice Place!', rating: 5)
review7 = Review.create!(user_id: user2.id, biz_id: 2, body: 'Nice Place!Nice PlaceNice PlaceNice PlaceNice PlaceNice PlaceNice Place', rating: 5)
review8 = Review.create!(user_id: user3.id, biz_id: 2, body: 'Nice Place!Nice PlaceNice PlaceNice PlaceNice PlaceNice PlaceNice PlaceNice Place', rating: 3)
review9 = Review.create!(user_id: user4.id, biz_id: 2, body: 'Nice Place!Nice PlaceNice PlaceNice PlaceNice PlaceNice PlaceNice Place', rating: 4)
review10 = Review.create!(user_id: user5.id, biz_id: 2, body: 'Nice Place!Nice PlaceNice PlaceNice PlaceNice PlaceNice Place', rating: 3)
review11 = Review.create!(user_id: user6.id, biz_id: 2, body: 'Nice Place!Nice PlaceNice PlaceNice PlaceNice PlaceNice Place', rating: 4)

review12 = Review.create!(user_id: user4.id, biz_id: 3, body: 'Nice Place!Nice PlaceNice PlaceNice PlaceNice PlaceNice Place', rating: 4)
review13 = Review.create!(user_id: user5.id, biz_id: 4, body: 'Nice Place!Nice PlaceNice PlaceNice PlaceNice PlaceNice Place', rating: 4)
review14 = Review.create!(user_id: user3.id, biz_id: 5, body: 'Nice Place!Nice PlaceNice PlaceNice PlaceNice PlaceNice Place', rating: 4)
review15 = Review.create!(user_id: user3.id, biz_id: 6, body: 'Nice Place!Nice PlaceNice PlaceNice PlaceNice PlaceNice Place', rating: 4)
review16 = Review.create!(user_id: user6.id, biz_id: 7, body: 'Nice Place!Nice PlaceNice PlaceNice PlaceNice PlaceNice Place', rating: 4)
review17 = Review.create!(user_id: user1.id, biz_id: 8, body: 'Nice Place!Nice PlaceNice PlaceNice PlaceNice PlaceNice Place', rating: 4)


tag1 = Tag.create!(name: 'Korean')
taggings1 = Tagging.create!(tag_id: tag1.id, biz_id: biz1.id)
tag2 = Tag.create!(name: 'American (Traditional)')
taggings2 = Tagging.create!(tag_id: tag2.id, biz_id: biz2.id)
tag3 = Tag.create!(name: 'Ramen')
taggings3 = Tagging.create!(tag_id: tag3.id, biz_id: biz3.id)

taggings4 = Tagging.create!(tag_id: tag3.id, biz_id: biz4.id)
tag5 = Tag.create!(name: 'Noodles')
taggings5 = Tagging.create!(tag_id: tag5.id, biz_id: biz4.id)
tag6 = Tag.create!(name: 'Coffee & Tea')
taggings6 = Tagging.create!(tag_id: tag6.id, biz_id: biz5.id)
tag7 = Tag.create!(name: 'Bubble Tea')
taggings7 = Tagging.create!(tag_id: tag7.id, biz_id: biz5.id)

taggings8 = Tagging.create!(tag_id: tag7.id, biz_id: biz6.id)
tag9 = Tag.create!(name: 'Cafes')
taggings9 = Tagging.create!(tag_id: tag9.id, biz_id: biz6.id)
tag10 = Tag.create!(name: 'Sushi Bars')
taggings10 = Tagging.create!(tag_id: tag10.id, biz_id: biz7.id)
tag11 = Tag.create!(name: 'Japaness')
taggings11 = Tagging.create!(tag_id: tag11.id, biz_id: biz7.id)

taggings12 = Tagging.create!(tag_id: tag11.id, biz_id: biz8.id)

taggings13 = Tagging.create!(tag_id: tag10.id, biz_id: biz8.id)
tag14 = Tag.create!(name: 'Seafood')
taggings14 = Tagging.create!(tag_id: tag14.id, biz_id: biz8.id)

up11 = Upload.create(user_id: user1.id, biz_id:biz3.id)
up11.photo.attach(io: File.open("./app/assets/images/yeep_img/biz3_1.jpg"), filename:"biz3_1.jpg")
up12 = Upload.create(user_id: user2.id, biz_id:biz3.id)
up12.photo.attach(io: File.open("./app/assets/images/yeep_img/biz3_2.jpg"), filename:"biz3_2.jpg")
up13 = Upload.create(user_id: user3.id, biz_id:biz3.id)
up13.photo.attach(io: File.open("./app/assets/images/yeep_img/biz3_3.jpg"), filename:"biz3_3.jpg")
up13 = Upload.create(user_id: user4.id, biz_id:biz3.id)
up13.photo.attach(io: File.open("./app/assets/images/yeep_img/biz3_4.jpg"), filename:"biz3_4.jpg")

up14 = Upload.create(user_id: user5.id, biz_id:biz4.id)
up14.photo.attach(io: File.open("./app/assets/images/yeep_img/biz4_1.jpg"), filename:"biz4_1.jpg")
up15 = Upload.create(user_id: user6.id, biz_id:biz4.id)
up15.photo.attach(io: File.open("./app/assets/images/yeep_img/biz4_2.jpg"), filename:"biz4_2.jpg")
up16 = Upload.create(user_id: user7.id, biz_id:biz4.id)
up16.photo.attach(io: File.open("./app/assets/images/yeep_img/biz4_3.jpg"), filename:"biz4_3.jpg")
up17 = Upload.create(user_id: user8.id, biz_id:biz4.id)
up17.photo.attach(io: File.open("./app/assets/images/yeep_img/biz4_4.jpg"), filename:"biz4_4.jpg")

up18 = Upload.create(user_id: user1.id, biz_id:biz5.id)
up18.photo.attach(io: File.open("./app/assets/images/yeep_img/biz5_1.jpg"), filename:"biz5_1.jpg")
up19 = Upload.create(user_id: user2.id, biz_id:biz5.id)
up19.photo.attach(io: File.open("./app/assets/images/yeep_img/biz5_2.jpg"), filename:"biz5_2.jpg")
up20 = Upload.create(user_id: user3.id, biz_id:biz5.id)
up20.photo.attach(io: File.open("./app/assets/images/yeep_img/biz5_3.jpg"), filename:"biz5_3.jpg")
up21 = Upload.create(user_id: user4.id, biz_id:biz5.id)
up21.photo.attach(io: File.open("./app/assets/images/yeep_img/biz5_4.jpg"), filename:"biz5_4.jpg")

up22 = Upload.create(user_id: user1.id, biz_id:biz6.id)
up22.photo.attach(io: File.open("./app/assets/images/yeep_img/biz6_1.jpg"), filename:"biz6_1.jpg")
up23 = Upload.create(user_id: user2.id, biz_id:biz6.id)
up23.photo.attach(io: File.open("./app/assets/images/yeep_img/biz6_2.jpg"), filename:"biz6_2.jpg")
up24 = Upload.create(user_id: user3.id, biz_id:biz6.id)
up24.photo.attach(io: File.open("./app/assets/images/yeep_img/biz6_3.jpg"), filename:"biz6_3.jpg")
up25 = Upload.create(user_id: user4.id, biz_id:biz6.id)
up25.photo.attach(io: File.open("./app/assets/images/yeep_img/biz6_4.jpg"), filename:"biz6_4.jpg")

up26 = Upload.create(user_id: user1.id, biz_id:biz7.id)
up26.photo.attach(io: File.open("./app/assets/images/yeep_img/biz7_1.jpg"), filename:"biz7_1.jpg")
up27 = Upload.create(user_id: user2.id, biz_id:biz7.id)
up27.photo.attach(io: File.open("./app/assets/images/yeep_img/biz7_2.jpg"), filename:"biz7_2.jpg")
up28 = Upload.create(user_id: user3.id, biz_id:biz7.id)
up28.photo.attach(io: File.open("./app/assets/images/yeep_img/biz7_3.jpg"), filename:"biz7_3.jpg")
up29 = Upload.create(user_id: user4.id, biz_id:biz7.id)
up29.photo.attach(io: File.open("./app/assets/images/yeep_img/biz7_4.jpg"), filename:"biz7_4.jpg")

up30 = Upload.create(user_id: user1.id, biz_id:biz8.id)
up30.photo.attach(io: File.open("./app/assets/images/yeep_img/biz8_1.jpg"), filename:"biz8_1.jpg")
up31 = Upload.create(user_id: user2.id, biz_id:biz8.id)
up31.photo.attach(io: File.open("./app/assets/images/yeep_img/biz8_2.jpg"), filename:"biz8_2.jpg")
up32 = Upload.create(user_id: user3.id, biz_id:biz8.id)
up32.photo.attach(io: File.open("./app/assets/images/yeep_img/biz8_3.jpg"), filename:"biz8_3.jpg")
up33 = Upload.create(user_id: user4.id, biz_id:biz8.id)
up33.photo.attach(io: File.open("./app/assets/images/yeep_img/biz8_4.jpg"), filename:"biz8_4.jpg")


up1 = Upload.create(user_id: user1.id, biz_id: biz1.id)
up1.photo.attach(io: File.open("./app/assets/images/yeep_img/biz1_img1.jpg"), filename:"biz1_img1.jpg")
up2 = Upload.create(user_id: user2.id, biz_id: biz1.id)
up2.photo.attach(io: File.open("./app/assets/images/yeep_img/biz1_img2.jpg"), filename:"biz1_img2.jpg")
up3 = Upload.create(user_id: user3.id, biz_id: biz1.id)
up3.photo.attach(io: File.open("./app/assets/images/yeep_img/biz1_img3.jpg"), filename:"biz1_img3.jpg")
up4 = Upload.create(user_id: user4.id, biz_id: biz1.id)
up4.photo.attach(io: File.open("./app/assets/images/yeep_img/biz1_img4.jpg"), filename:"biz1_img4.jpg")
up5 = Upload.create(user_id: user5.id, biz_id: biz1.id)
up5.photo.attach(io: File.open("./app/assets/images/yeep_img/biz1_img5.jpg"), filename:"biz1_img5.jpg")
up6 = Upload.create(user_id: user6.id, biz_id: biz1.id)
up6.photo.attach(io: File.open("./app/assets/images/yeep_img/biz1_img6.jpg"), filename:"biz1_img6.jpg")

up7 = Upload.create(user_id: user3.id, biz_id:biz2.id)
up7.photo.attach(io: File.open("./app/assets/images/yeep_img/biz2_img1.jpg"), filename:"biz2_img1.jpg")
up8 = Upload.create(user_id: user4.id, biz_id:biz2.id)
up8.photo.attach(io: File.open("./app/assets/images/yeep_img/biz2_img2.jpg"), filename:"biz2_img2.jpg")
up9 = Upload.create(user_id: user5.id, biz_id:biz2.id)
up9.photo.attach(io: File.open("./app/assets/images/yeep_img/biz2_img3.jpg"), filename:"biz2_img3.jpg")
up10 = Upload.create(user_id: user6.id, biz_id:biz2.id)
up10.photo.attach(io: File.open("./app/assets/images/yeep_img/biz2_img4.jpg"), filename:"biz2_img4.jpg")
