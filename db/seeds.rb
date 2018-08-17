
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
review1_1 = Review.create!(
  user_id: user1.id,
  biz_id: biz1.id,
  body: "There are many good korean restaurants in San Francisco.\nCocobang is my preferred place! The food here is so good and I order too much every time! The half & halfchicken, pork belly slices and the rice pinky's with ramen are really good to try!",
  rating: 5)
review1_2 = Review.create!(
  user_id: user2.id,
  biz_id: biz1.id,
  body: "Came in at late night, and it still got a long line. Wait sooo long to get in.\nFood's really good",
  rating: 3)
review1_3 = Review.create!(
  user_id: user3.id,
  biz_id: biz1.id,
  body: "I have a great dinner here. This place is recommended for late night snack/meal.\n\nThe food is quick and delicious. We ordered korean style army soup and the fired chicken wings. Both of them are really good.\nThe place is very small but overall it is a good place to come.",
  rating: 4)
review1_4 = Review.create!(
  user_id: user4.id,
  biz_id: biz1.id,
  body: "The service here is very bad but I am guilty of coming here late night to eat hehe. I also like to order the tofu soup which tends to be too spicy these days even when I ask for medium spicy! ",
  rating: 2)
review1_5 = Review.create!(
  user_id: user5.id,
  biz_id: biz1.id,
  body: "Korean food...in SF!\n\nAs one of the few Korean places in the city, I had to give Cocobang a shot (get it? bang...shot!)\n\nThe first thing you'll notice is this place is pretty legit from the get go. You'll see KPOP playing in the background, Korean staff, and Korean writing all around the restaurant. Oh and of course, you'll also notice this place is a bit small. So don't think you can just waltz right in. You'll definitely have to wait a bit.",
  rating: 2)

review2_1 = Review.create!(
  user_id: user5.id,
  biz_id: biz2.id,
  body: "HOMEROOM IS A PLACE FOR COMFORT FOOD.\nEverything I stop by Oakland, you know that Homeroom is the restaurant to go to.\n\nHomeroom specializes in Mac&Cheese, but not any Mac & Cheese, flavorful, tasty, creamy M&C. I like this place because of its variety.\n\nIt has its basics but the add ons are what really makes it in my opinion. I love getting my Mac and cheese with breadcrumbs and hot dogs, call me trash all you want but it is really good!!! They offer other toppings too such as vegetables, bacon and more. You basically have unlimited variations.\n\nThe only downside I see is that the toppings add up, and it can get pretty pricey. My friend spent $20 on his dish before. But the counter to that is personally for me, I can't finish one plate by myself so if you aren't someone with the biggest appetite this could be a 2 in 1 meal.\n\nYou should try this place at least once to know the hype!",
  rating: 4)
review2_2 = Review.create!(
  user_id: user8.id,
  biz_id: biz2.id,
  body: "Some good ass mac and cheese. Portions are large, and there's lots of options. I got the Gilroy Garlic, but my favorite that I tried was the Chicken Bacon Ranch because the ranch takes away some of the salt, which can be overwhelming. Don't skimp on the breadcrumbs.\n\nLines can be long, and you will want to die afterwards, but that's fine.",
  rating: 4)
review2_3 = Review.create!(
  user_id: user1.id,
  biz_id: biz2.id,
  body: "I love coming to homeroom, but as someone lactose intolerant, I am always debating the pros and cons of stuffing my face with mac n cheese. This time, I tried out their vegan mac n cheese for the first time, and I did not regret it. The server recommended that I try it with the mexican flavoring since she said that the regular vegan mac n cheese is good but not super flavorful. With the mexican adobo sauce, cilantro, lime, and soyrizo, the vegan mac n cheese ended up being delicious. It didn't taste super \"cheesy\" but it was creamy, spicy, and savory. I'm so glad that their non-dairy option did not dissapoint since it is so hard to find dairy-free mac n cheese anywhere. It was delicious and I may be trying more of their vegan mac n cheeses again soon.\n\nI came here at 2:30 on a Sunday and only had to wait about 10 minutes before getting a table. The service was overall great, and I was overall very satisfied with the dining experience.",
  rating: 5)
review2_4 = Review.create!(
  user_id: user10.id,
  biz_id: biz2.id,
  body: "It's an entire place dedidated to mac and cheese..how can it get any better?\n\nThe Jalapenño Popper Mac is by far my favorite. The staff is sweet and even though there is often a wait to get a table, the food makes it all worthwhile. Definitely would recommend even if just for the expericience of such a unique place!",
  rating: 3)

review5_1 = Review.create!(
  user_id: user10.id,
  biz_id: biz3.id,
  body: "This was probably one of the better bowls of ramen I've had!  I literally held my bowl up and drank all of the soup broth!\n\nWe ordered the Original Ramen ($14), Crispy Mushrooms ($8), and a side of Oxtail ($5).  The Crispy Mushrooms were well-battered and flavorful.  The shimeji mushroom was nice and smooth.  The Original Ramen consists of a beef bone broth and came with incredibly tender beef filets, a delicious black truffle oil, bouncy noodles, slices of king oyster mushroom, an onsen egg, and green onions.  The ramen broth was light yet flavorful.  The king oyster mushrooms were very fresh and had a creamy coconut taste to them!  The onsen egg and noodles were cooked perfectly.  The Oxtail beef was also tender and fall off the bone, and it was marinated in a thick tomato stew that is really familiar.\n\nBy the end of my bowl of ramen, I still had the perfect amount of ingredients to balance it all out.  At some places, you're left with a bowl of thick and heavy broth; but Ushi Taro gives the perfect proportion and taste for me!\n\nService was friendly and attentive.  They offer water and green tea, which is very soothing and cleansing.  I was pretty blown away by the flavors and I'm definitely coming back.  I almost don't want to write this review so it doesn't get too crowded!",
  rating: 4)
review4_2 = Review.create!(
  user_id: user11.id,
  biz_id: biz3.id,
  body: "Probably my favorite ramen place for now! Don't like most pork soup base, the beef soup base not salty or fatty at all. I can taste their high quality beef and soup! definitely will come back and bring more friends to try this special beef soup base ramen!",
  rating: 4)
review3_3 = Review.create!(
  user_id: user12.id,
  biz_id: biz3.id,
  body: "Came to the softy opening and really enjoyed the ramen and crispy mushrooms. Make sure to stir the broth to mix in the truffle if you get the original. The noodles were very good, even got an extra order, but they are short for ramen which I have never really seen before. Not really meant for slurping. Hope this place sticks around.\n\nWe will return for sure!\n\nA few things I would like to see on the menu and the shop in the future.\nChicken Karage and Rice (to add to broth when noodles are finished)\nAlso Shichimin (7 spices), Garlic, and White Pepper condiments.",
  rating: 5)
review2_4 = Review.create!(
  user_id: user13.id,
  biz_id: biz3.id,
  body: "Date & Time:  Saturday June 30, 2018 @ 6pm\nDining Companions:  Mommy & Husband\nScene:  Solo Diners, Couples & Families In Denim Jackets, Crop Tops, Cut-Offs, Converse & MK Cross-Body Bags Tuck into Delicious Piping Hot Bowls of Ramen\nMusic:  Florence + The Machine\nDecor:  The Very Sweet Hostess/Server will Greet You Warmly & Give You A Choice Of Counter-Seating OverLooking 9th St or Communal  Tables.   The Place is Reminiscent of a Japanese Tavern\nService:  Awesome One-Woman Show- A Real SweetHeart\nImbibe:  Green Tea.  Beer & Wine Available Soon\nDevour:  Original Bone Broth Ramen & Tsukeman(Ramen w/ Dipping Sauce & Bone Broth on the Side.  For Dessert Green Tea Mochi & Green Tea CheeseCake\nTotal:  $59.33",
  rating: 3)

review3_1 = Review.create!(
  user_id: user10.id,
  biz_id: biz3.id,
  body: "This was probably one of the better bowls of ramen I've had!  I literally held my bowl up and drank all of the soup broth!\n\nWe ordered the Original Ramen ($14), Crispy Mushrooms ($8), and a side of Oxtail ($5).  The Crispy Mushrooms were well-battered and flavorful.  The shimeji mushroom was nice and smooth.  The Original Ramen consists of a beef bone broth and came with incredibly tender beef filets, a delicious black truffle oil, bouncy noodles, slices of king oyster mushroom, an onsen egg, and green onions.  The ramen broth was light yet flavorful.  The king oyster mushrooms were very fresh and had a creamy coconut taste to them!  The onsen egg and noodles were cooked perfectly.  The Oxtail beef was also tender and fall off the bone, and it was marinated in a thick tomato stew that is really familiar.\n\nBy the end of my bowl of ramen, I still had the perfect amount of ingredients to balance it all out.  At some places, you're left with a bowl of thick and heavy broth; but Ushi Taro gives the perfect proportion and taste for me!\n\nService was friendly and attentive.  They offer water and green tea, which is very soothing and cleansing.  I was pretty blown away by the flavors and I'm definitely coming back.  I almost don't want to write this review so it doesn't get too crowded!",
  rating: 4)
review3_2 = Review.create!(
  user_id: user11.id,
  biz_id: biz3.id,
  body: "Probably my favorite ramen place for now! Don't like most pork soup base, the beef soup base not salty or fatty at all. I can taste their high quality beef and soup! definitely will come back and bring more friends to try this special beef soup base ramen!",
  rating: 4)
review3_3 = Review.create!(
  user_id: user12.id,
  biz_id: biz3.id,
  body: "Came to the softy opening and really enjoyed the ramen and crispy mushrooms. Make sure to stir the broth to mix in the truffle if you get the original. The noodles were very good, even got an extra order, but they are short for ramen which I have never really seen before. Not really meant for slurping. Hope this place sticks around.\n\nWe will return for sure!\n\nA few things I would like to see on the menu and the shop in the future.\nChicken Karage and Rice (to add to broth when noodles are finished)\nAlso Shichimin (7 spices), Garlic, and White Pepper condiments.",
  rating: 5)
review3_4 = Review.create!(
  user_id: user13.id,
  biz_id: biz3.id,
  body: "Date & Time:  Saturday June 30, 2018 @ 6pm\nDining Companions:  Mommy & Husband\nScene:  Solo Diners, Couples & Families In Denim Jackets, Crop Tops, Cut-Offs, Converse & MK Cross-Body Bags Tuck into Delicious Piping Hot Bowls of Ramen\nMusic:  Florence + The Machine\nDecor:  The Very Sweet Hostess/Server will Greet You Warmly & Give You A Choice Of Counter-Seating OverLooking 9th St or Communal  Tables.   The Place is Reminiscent of a Japanese Tavern\nService:  Awesome One-Woman Show- A Real SweetHeart\nImbibe:  Green Tea.  Beer & Wine Available Soon\nDevour:  Original Bone Broth Ramen & Tsukeman(Ramen w/ Dipping Sauce & Bone Broth on the Side.  For Dessert Green Tea Mochi & Green Tea CheeseCake\nTotal:  $59.33",
  rating: 3)

review4_1 = Review.create!(
  user_id: user1.id,
  biz_id: biz4.id,
  body: "I would recommend showing up at or before opening time, or you'll end up waiting 30-45 minutes!\n\nThis is a tiny place with seating for maybe 20-25. The Spicy Lamb Ramen was aight, but I think their Spicy Pai Tan Ramen is better. Loved the noodles and thick broth!",
  rating: 3)
review4_2 = Review.create!(
  user_id: user5.id,
  biz_id: biz4.id,
  body: "The HYPE exist! But be warned this is not your typical ramen spot. First of all there is a huge wait no matter what day you go on but it's definitely better on a weekday. They open pretty late so if you prefer not to wait as long I suggest going an hour before they close. Surprising they seated everyone who was waiting in line after closing. \n\nWe ordered the deviled oysters, spicy lamb ramen (added duck chashu) and a spicy tori patina ramen (added duck chashu) The duck chashu was really GOOD but wish it came with more duck. The devil oysters were pretty good too but not amazing. Next came the ramen! Finally, the broth was creamy and the noodles were thick. Just how you would eat tsukenmen (dipping ramen) I felt like it was a similar concept without the separation of the dipping. I really love how the thickness of the sauce cling onto \n\nthe ramen and the flavors were on point. If you want a lighter and not as creamy broth they do have other options, just because it can be pretty heavy at times.",
  rating: 4)
review4_3 = Review.create!(
  user_id: user7.id,
  biz_id: biz4.id,
  body: "As much as I like the food here, I do not like being harassed by the homeless people in that area. As someone who was born and raised in SF, I felt like the people wandering around this place made not only visitors but also locals like myself feel uncomfortable.\n\nBesides the location, the food here is great! I like getting the tori paitan and the fried enoki for appetizer. Soup and noodles are good, and the big spoon helps but is a bit heavy. The first time I had the tori paitan, I thought the soup was too thick but the second time I had it, it grew on me and I started to like it!",
  rating: 5)

review5_1 = Review.create!(
  user_id: user2.id,
  biz_id: biz5.id,
  body: "TRY: the JASMINE MILK TEA or HONG KONG STYLE (hot!!!).\n\nThis Boba Guys is a tiny little shop that has barely enough standing room, so always plan on taking your drink to-go. The hot milk teas are absolutely delicious and the tapioca pearls are the perfect texture and sweetness-- the best drink to warm you up on another windy day in SanFran.",
  rating: 5)
review5_2 = Review.create!(
  user_id: user6.id,
  biz_id: biz5.id,
  body: "UHH Boba Guys is THE best boba in SF. Don't @ me.\n\nEven though it's the best, this is probably the worst location. It's way smaller than the other shops and the line is ridiculously long. After you place your order, there's a ton of people at the other half of the waiting area hanging around for their drinks. If you wait outside, most likely your drink is given to someone else or someone effed up decides to steal it, so no good.\n\nMatcha Latte is easily one of my favorite drinks here. They recommend 75% sweet and I think that's WAYYYYY too sweet. Especially when you order their boba and it comes with a honey-like syrup, it's too much sugar overall. If you get boba, maybe consider 25% sweet. Without boba, 50% should be puuurfect.\n\nAlso delicious: Hong Kong Milk Tea, Strawberry Matcha Latte and their Mango Tea (only available during the summer!)",
  rating: 4)
review5_3 = Review.create!(
  user_id: user7.id,
  biz_id: biz5.id,
  body: "Best boba shop by far, creative and tasty selections along with their own house specials makes it a unique place to get boba.\n\nThere is a long line in front and you need to be willing to stand in line for your cup of heaven!!\nWe had the strawberry/matcha boba, tropical selection and the lychee jasmine tea. \n\nThe first two were amazing!! Memorable and very tasty dinner Inka. Unfortunately the lychee tea didn't seem to be lychee and was something else, so I ended up tossing more than half of mine as I didn't care for the flavor. Will be back on the long line and ordering their specialty drinks next time.",
  rating: 4)

review6_1 = Review.create!(
  user_id: user6.id,
  biz_id: biz6.id,
  body: "Honestly, one of the better boba places that I've tried in the Bay! My favorite in SF is still Boba Guys, but Urban Ritual isn't bad at all. Their menu is smaller compared to some other place I've been to, but I would say it's still a good selection of teas/fruity flavors/etc. Something for everyone. (You can also build your own drink as well!)\n\nI tried the House Milk Tea (usually my go-to if I'm at a new boba place) and loved it! The tea was strong and flavorful, just the right enough of milkiness, and their boba is chewy and sweet! (I hate boba that isn't sweetened and clearly isn't freshly made.)\n\nI can't wait to come back here again and try some of their other flavors!",
  rating: 5)
review6_2 = Review.create!(
  user_id: user9.id,
  biz_id: biz6.id,
  body: "GET HONEY BOBA IN YOUR DRINK!! The flavor of the boba is definitely enhanced compared to nearby SF boba shops. \n\nTHEY HAVE OAT MILK!! And their tea flavors are quite strong so it's good that they have a neutral dairy free alternative (soy milk always wrecks a good milk tea) \n\nVERY LITTLE SEATING INSIDE!! Idk why I'm yelling. Employees were nice, friendly. Right near the main Hayes Valley area. A little pricey too but well worth it for an occasional treat.",
  rating: 4)
review6_3 = Review.create!(
  user_id: user10.id,
  biz_id: biz6.id,
  body: "Solid 4 stars for their matcha milk toffee drink and good customer service.\n\nThey listened when I asked for it not too sweet, and were friendly with their samples.\n\nThey followed up by asking if I liked my drink, and seemed to be on top of their drink orders.\n\nA great addition to the area.",
  rating: 4)

review7_1 = Review.create!(
  user_id: user10.id,
  biz_id: biz7.id,
  body: "The sushi here is absolutely the best sushi I've ever had. The California roll is very cheap and very very good. Every time I have the California roll it reminds me of why I love this place. My gf and I come back for all the fresh rolls but every time we're here we have to get 3 California rolls and 2 other rolls with a few cocktails to make the night perfect. \n\nRecommendations is to come before 7-8pm so that you get sat within 10 minutes. Anytime after that you're going to wait around 45 minutes. \n\nAbsolutely recommend it!",
  rating: 5)
review7_2 = Review.create!(
  user_id: user15.id,
  biz_id: biz7.id,
  body: "This is my go to place when friends tell me they like sushi. \n\nEverything tastes super fresh and they have a full bar. \n\nAlways go for the ankimo if it's on the menu, and the grilled whole squid. \n\nOnly con is that it fills up fast and there is usually a wait. Good thing you can order a drink while you are standing around !",
  rating: 4)
review7_3 = Review.create!(
  user_id: user14.id,
  biz_id: biz7.id,
  body: "Has a nice atmosphere... had the fried oysters, rainbow roll, Japanese fried chicken....love the live DJ , he was on point. The service is great and the music loud... I'd definitely revisit...its 3.5 star pushing really..really hard to be a four-star!!!",
  rating: 3)

review8_1 = Review.create!(
  user_id: user1.id,
  biz_id: biz8.id,
  body: "Saru is my favorite Bay Area sushi place. The food is so good it gives me a body high. Be warned, once you eat their food, all other similar restaurants are no longer enjoyable.\n\nFood Recommendation: Sashimi and/or nigiri flight. Definitely order their mozuku, it's the best I've had.\n\nThe atmosphere is cool, you sit inside/outside or watch the chefs work. Be advised that there is a line before they open and seating is limited.\n\nSaru is the only redeeming factor of having to visit SF.",
  rating: 5)
review8_2 = Review.create!(
  user_id: user13.id,
  biz_id: biz8.id,
  body: "Ambience-really intimate setting , cozy and din light. Pretty small sushi bar so that expect a long wait.\n\nFood & Taste- i didn't try omakase. I tried their salmon variety sashimi and rolls. I love it. They have a variety of not so common cuts. Tried their yazu, otoro, sunazuri and chutoro for sashimi. The flavor is fabulous. If you love trying out new cuts everytime like I do, I recommend you this place. Check it out. I heard their omakase is good as well. I am down to try out their omakase next time. \n\nPrice- i think they have fair price. Tou get what you pay for. The service, food and ambience I get here is totally worth for what I've paid.\n\nComjng back??? YES!",
  rating: 4)
review8_3 = Review.create!(
  user_id: user12.id,
  biz_id: biz8.id,
  body: "Excellent fresh sushi with very reasonable price!\n\nFood: \n- hamachi carpaccio with truffle oil: the fish was very fresh and I was a bit surprised that the portion was pretty for this plate. The ponzu and the truffle oil balanced perfectly together with the fish. \n\n- scallop and ankimo spoon: it was sooo delicious that I wish it was bigger in portion. The scallop was very fresh and sweet, no fishy smell to it. The ankimo just melts in your mouth. \n\n-12 nigiri omakase: $72 - this price is very reasonable compare to other high end places. And the fish quality and taste does not disappoint!!! Loved the freshness and other unique flavors they add to the sushi. I would definitely order this again. \n\nService was excellent and ambiance, as you can tell from the picture, very dark. Waited for 1.5 hour on a Saturday night at 8PM.... so be prepared. ENJOY!",
  rating: 5)

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
