# User.destroy_all

guest = User.create(
  email: 'guest@email.com',
  password:'guest_login',
  first_name:'Guest',
  last_name: 'Yeep'
)
guest.profile_img.attach(io: File.open("./app/assets/images/demo_user_pic.png"), filename:"demo_user_pic.png")


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
