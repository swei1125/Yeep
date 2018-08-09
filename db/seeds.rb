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
  name:'boba',
  price:'$',
  address:'7757 ridgeline dr',
  city: 'dublin',
  latitude: 37.779760,
  longitude: -122.413820,
  phone_number: 123456,
  user_id: 1
)

review1 = Review.create!(user_id: user1.id, biz_id: 1, body: 'Nice Place!', rating: 5)
review2 = Review.create!(user_id: user2.id, biz_id: 1, body: 'Nice Place!', rating: 4)
review3 = Review.create!(user_id: user3.id, biz_id: 1, body: 'Nice Place!', rating: 3)
review4 = Review.create!(user_id: user4.id, biz_id: 1, body: 'Nice Place!', rating: 2)
review5 = Review.create!(user_id: user5.id, biz_id: 1, body: 'Nice Place!', rating: 1)

up = Upload.create(user_id: user1.id, biz_id: biz1.id)
up.photo.attach(io: File.open("/Users/amon/Desktop/test.jpg"), filename:"test.jpg")
