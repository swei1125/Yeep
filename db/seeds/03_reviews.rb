
  biz1 = Biz.find_by_name('Cocobang')
  biz2 = Biz.find_by_name('Homeroom')
  biz3 = Biz.find_by_name('Ushi Taro')
  biz4 = Biz.find_by_name('Mensho Tokyo')
  biz5 = Biz.find_by_name('Boba Guys')
  biz6 = Biz.find_by_name('Urban Rital')
  biz7 = Biz.find_by_name("Ryoko's")
  biz8 = Biz.find_by_name('Saru Sushi Bar')
  spa_vitale = Biz.find_by_name('Spa Vitale')
  burke = Biz.find_by_name('Burke Williams Day Spa')
  qua = Biz.find_by_name('Qua The Spa at SOMA GRAND')
  nob = Biz.find_by_name('Nob Hill Spa')
  pure = Biz.find_by_name('Pure Organic Spa')
  kabuki = Biz.find_by_name('Kabuki Springs & Spa')
  earthbody = Biz.find_by_name('Earthbody')
  little_sweet = Biz.find_by_name('Little Sweet')
  quali = Biz.find_by_name('QualiTea')
  teaspoon = Biz.find_by_name('Teaspoon')
  itea = Biz.find_by_name('i-Tea')
  identitea = Biz.find_by_name('Indentitea')
  teahut = Biz.find_by_name("Tea Hut")
  alchemist = Biz.find_by_name("Alchemist Bar & Lounge")
  beer_pong = Biz.find_by_name("The Beer Pong Lounge")
  f8 = Biz.find_by_name("F8 Nightclub and Bar")
  view_lounge = Biz.find_by_name("The View Lounge")
  monroe = Biz.find_by_name("Monroe")
  b_pati = Biz.find_by_name("B Patisserie")
  tartine = Biz.find_by_name("Tartine Bakery & Cafe")
  holmes = Biz.find_by_name("Mr Holmes Bakehouse")
  golden = Biz.find_by_name("Golden Gate Bakery")
  schubert = Biz.find_by_name("Schubert’s Bakery")
  craftsman = Biz.find_by_name("Craftsman and Wolves")

  user1 = User.find_by(email: "1@gmail.com")
  user2 = User.find_by(email: "2@gmail.com")
  user3 = User.find_by(email: "3@gmail.com")
  user4 = User.find_by(email: "4@gmail.com")
  user5 = User.find_by(email: "5@gmail.com")
  user6 = User.find_by(email: "6@gmail.com")
  user7 = User.find_by(email: "7@gmail.com")
  user8 = User.find_by(email: "8@gmail.com")
  user9 = User.find_by(email: "9@gmail.com")
  user10 = User.find_by(email: "10@gmail.com")
  user11 = User.find_by(email: "11@gmail.com")
  user12 = User.find_by(email: "12@gmail.com")
  user13 = User.find_by(email: "13@gmail.com")
  user14 = User.find_by(email: "14@gmail.com")
  user15 = User.find_by(email: "15@gmail.com")

  craftsman1 = Review.create!(
    user_id:user2.id,
    biz_id:craftsman.id,
    body: "Craftsman and wolves has been on my brunch list for so long now. Finally my husband and I were able to make it out to here on our continuing quest to visit all the brunch places and I (and my tummy) are so glad I did! ",
    rating: 5
  )
  craftsman2 = Review.create!(
    user_id:user7.id,
    biz_id:craftsman.id,
    body: "To be honest, I'm not the biggest fan of Craftsman, mainly because I think their Rebel Within is overhyped and overpriced. However, I'm glad I gave their other desserts a chance! ",
    rating: 4
  )
  craftsman3 = Review.create!(
    user_id:user6.id,
    biz_id:craftsman.id,
    body: "I came here on a Friday morning looking to do some work. I'm a big fan of pastries and cakes so I've always wanted to try Craftsman and Wolves. I ordered the 'Alfajores' kouign amann & a matcha latte with almond milk for myself and then a croissant to-go for my bf.",
    rating: 4
  )
  craftsman4 = Review.create!(
    user_id:user10.id,
    biz_id:craftsman.id,
    body: "I am a sucker for a fancy dessert. Eating something sweet and beautiful while drinking a cup of coffee and writing in my journal is my favorite way to reflect on my life. Am I moving in the direction that will make me feel truly fulfilled when I'm 70? How can I make more of the moments of my day feel as special as eating this pastry? Who knew dessert could be so life changing, right?!",
    rating: 5
  )
  craftsman5 = Review.create!(
    user_id:user13.id,
    biz_id:craftsman.id,
    body: "Was hoping for a bit more from the pictures, but this place isn't bad either. It's pretty much a cafe with food, there are a bunch of options at the start of the counter of various baked goods. You order what you want, get a number, they hear it up, and then you eat!",
    rating: 3
  )

  schubert1 = Review.create!(
    user_id:user10.id,
    biz_id:schubert.id,
    body: "Schubert's has the best cakes in San Francisco hands DOWN! The crazy thing too is that they have always had the best cakes... even before foodie culture invaded in SF. Their princess cake is absolutely to die for and super reasonably priced. GET THE PRINCESS CAKE! Marzipan and raspberry... what's there not to like?! ",
    rating: 5
  )
  schubert2 = Review.create!(
    user_id:user11.id,
    biz_id:schubert.id,
    body: "Right when I walked in, I was entranced by all the gorgeous looking desserts. OMG...princess cakes, cakes, tarts, eclairs, cream puffs, mousse, opera cake, Neapolitans, cookies, and so much more. The cakes come in different sizes and slices. The tarts come in cake size, handheld ($4-5), and bite size minis ~$2. Ya!  The mini bite size tart had a buttery dense crust with smooth custard filling and fresh berries. ",
    rating: 4
  )
  schubert3 = Review.create!(
    user_id:user14.id,
    biz_id:schubert.id,
    body: "A cute little French style bakery on Clement at that has cakes, pastries, and Mousses. I ordered a chocolate mousse that tasted great. Very decadent and rich in chocolatey goodness, it was chocolate mousse with chocolate shavings, on a chocolate sponge cake, with pieces of chocolate on top. Then a raspberry on top! High quality but I would definitely recommend sharing it amongst 3 people. I think most people come here for the cakes and although I haven't tried em, they look beautiful.",
    rating: 4
  )
  schubert4 = Review.create!(
    user_id:user15.id,
    biz_id:schubert.id,
    body: "Highly recommend this place. The service was so fast and very friendly. They asked if we wanted forks to go. We ordered double chocolate mouse and Swedish princess cake. The presentation of the cakes are amazing and so is the taste. Both were fantastic. I just wish I had more.",
    rating: 5
  )
  schubert5 = Review.create!(
    user_id:user4.id,
    biz_id:schubert.id,
    body: "From cookies to cakes and every other delicious confectionary in-between, I have yet to try something here I do not love. We just started going here this summer and yet their cakes were so superb I wanted to have my birthday cake from them this year. Seriously, stop here for coffee and a slice of one of their indulgent cakes. Grab a bag of tea cookies for later or as a gift!",
    rating: 5
  )

  golden1 = Review.create!(
    user_id:user6.id,
    biz_id:golden.id,
    body: "Best egg custard in SF Chinatown. They're warm and the crust is not as thick as some places I've tried. It's a good size not the minis at dim sum. The taste is more on the eggy side... Will come back to try coconut tart!",
    rating: 5
  )
  golden2 = Review.create!(
    user_id:user7.id,
    biz_id:golden.id,
    body: "The egg tart I had was brought all over SF and shoved into a fridge before my friend reheated it for me and W O W - it was probably one of the best egg tarts I've had to date. The first thingI noticed was that this egg tart was a bit bigger than most I've had before. The exterior is thick enough to hold the custard filling and not get soggy but was also buttery & flaky (no cookie type crusts here!!). The filling is also nice and smooth and is not overpoweringly sweet - it's honestly a perfect balance. ",
    rating: 5
  )
  golden3 = Review.create!(
    user_id:user8.id,
    biz_id:golden.id,
    body: "From the corner of my eye, I saw a giant line hugging the streets up ahead. I've heard of Golden Gate Bakery from plenty of people but have yet to try it. I decided that this would be the day to embark on a 45 min wait on a Saturday evening to take the chance! ",
    rating: 4
  )
  golden4 = Review.create!(
    user_id:user9.id,
    biz_id:golden.id,
    body: "Finally was able to catch them open. No joke, like many others, whenever I pass by this place, they're always on vacation so it's definitely a win when I finally got my hands on these egg tart. ",
    rating: 4
  )
  golden5 = Review.create!(
    user_id:user10.id,
    biz_id:golden.id,
    body: "Foodgasm in your mouth! These egg-tarts should always be a go-to when you're in San Francisco. Fresh out of the oven and piping hot, the custard is so buttery soft that it melts in your mouth. The crust is flaky and crisp, but also thick and layered to hold all that custard without falling apart. It's sweet but not overpowering like warm milk in your mouth. When they're hot out of the oven, they're amazing. When they're cold, they're still freakin' good.",
    rating: 5
  )

  holmes1 = Review.create!(
    user_id:user1.id,
    biz_id:holmes.id,
    body: "Wonderfully fresh and delicious baked goods! The bakery is teeny tiny and almost always has a line out the door. It goes by fast, but tons of people take pictures with the 'I got baked in San Francisco' sign which makes it even more cramped. ",
    rating: 5
  )
  holmes2 = Review.create!(
    user_id:user2.id,
    biz_id:holmes.id,
    body: "The pastry that they are most known for is their mcruffin which is basically just a croissant in the shape of a muffin. I somehow thought it was suppose to be a crossover of a muffin and a croissant but it was all croissant. The line was pretty long but it went by pretty fast as everyone just tells the staff what they want and they put it in the box. You have to order a total of 6 pastries to get a box (which I wanted). ",
    rating: 4
  )
  holmes3 = Review.create!(
    user_id:user3.id,
    biz_id:holmes.id,
    body: "Long line moves pretty quickly. Delicious pastries! Least favorite was the matcha... most favorite was the peach. Cookie dough stuffed donut close second. My husband and I spent $38 and ate everything within 24 hours.",
    rating: 4
  )
  holmes4 = Review.create!(
    user_id:user4.id,
    biz_id:holmes.id,
    body: "Personally, I have mixed feelings about Mr Holmes Bakehouse. I remember waking up extra early on a weekend just to buy their famous Cruffins. Failed numerous times despite waking up before 7 am. Those were the good times, now I don't go as often as I used too. ",
    rating: 4
  )
  holmes5 = Review.create!(
    user_id:user9.id,
    biz_id:holmes.id,
    body: "It's such a cute little bakery. There's no sign saying the bakery name, but it's obvious when you see a line out the door and you can't miss the neon pink instagram famous sign 'I got baked in San Francisco'. I arrived around noon so by then the selection was limited. Many things were sold out already, including their famous cruffin sadly.",
    rating: 5
  )

  tartine1 = Review.create!(
    user_id:user5.id,
    biz_id:tartine.id,
    body: "This place is definitely worth sticking through the long lines because the quality of the food they sell is hard to find elsewhere.  If you find yourself losing patience, just know that you will be happy you stuck through it at the end when you're eating the yumminess.",
    rating: 5
  )
  tartine2 = Review.create!(
    user_id:user10.id,
    biz_id:tartine.id,
    body: "Quite excellent! Light banana, hint of chocolate. Crust was a tad dry, but we also kept this in the fridge for a day before eating it.",
    rating: 4
  )
  tartine3 = Review.create!(
    user_id:user13.id,
    biz_id:tartine.id,
    body: "Can't emphasize enough.. chocolate eclair + frangipane tart.. so freaking good. Anytime I have out of town visitors, I MAKE SURE THEY HAVE THE CHOCOLATE ECLAIR. It never, ever, ever disappoints.",
    rating: 5
  )
  tartine4 = Review.create!(
    user_id:user14.id,
    biz_id:tartine.id,
    body: "Banana Cream Tart ($7.75) 4/5. Tart is very light and creamy and the crust is buttery, flaky and crunchy. It is sweet but not overpowering! Their banana cream tart was the only thing I got from Tartine bakery so I cannot say much about other pastry. But It's definitely worth a try and wait! Next time, I would like to try their morning buns!",
    rating: 4
  )
  tartine5 = Review.create!(
    user_id:user1.id,
    biz_id:tartine.id,
    body: "Drove by and saw that there was a line wrapped along the building so we definitely had to stop by! And the wait was worth it! We got the lemon tart and the banana cream tart. The lemon tart was way too tarty for me but the banana cream tart was too die for! It was perfectly sweet and refreshing with the slices of banana. The wait wasn't too bad. It goes by quickly.",
    rating: 5
  )

  b_pati1 = Review.create!(
    user_id:user4.id,
    biz_id:b_pati.id,
    body: "This place has a line out the door almost all day, but it does go by fast. You'll find that there are regulars here as well as tourists who went out of their way to try the chocolate banana croissant, or the macaron on a saturday morning. ",
    rating: 4
  )
  b_pati2 = Review.create!(
    user_id:user7.id,
    biz_id:b_pati.id,
    body: "You will never find a better find a more satisfying kouign amann anywhere. I've tried. Save yourself the trouble. I had other pastries here as well that were good but the kouign amann takes the cake. ",
    rating: 5
  )
  b_pati3 = Review.create!(
    user_id:user9.id,
    biz_id:b_pati.id,
    body: "Came by the other morning for pastries it was a heavenly experience! Parking is palateable on a weekday morning right when they open at 8 am since street parking is free until 9 am! With the expansion not too long ago, the bakery is much more comfortable!",
    rating: 5
  )
  b_pati4 = Review.create!(
    user_id:user10.id,
    biz_id:b_pati.id,
    body: "I love love love B Patisserie!
Their Kouign Amann is to die for! Definitely the best Kouign Amann I have ever had! Very flaky, crispy, buttery and sweet! Their chocolate banana almond croissant is also very delicious. It is a bit heavy but definitely worth a try! Their passion fruit bostock was dry for me but it has just right amount of sweetness! If you want something fruity and not overly sweet, try their bostock!",
    rating: 5
  )
  b_pati5 = Review.create!(
    user_id:user13.id,
    biz_id:b_pati.id,
    body: "My favorite french pastries place to go to when I am in the Bay. Always one of my stops. I was recently here during Labor day weekend and even though the line was out the door, the wait was not bad. ",
    rating: 5
  )

  monroe1 = Review.create!(
    user_id:user5.id,
    biz_id:monroe.id,
    body: "I attended a work outing here with karaoke and had a blast! This cool little spot is located in a historic jazz venue. Musicians like Miles Davis, James Moody, Johnny Coltrane, Lenny Bruce and other legends have performed inside.",
    rating: 5
  )
  monroe2 = Review.create!(
    user_id:user6.id,
    biz_id:monroe.id,
    body: "Super swank bar/lounge in the heart of North Beach! I've only been here a few times (since my club-going days are behind me). My most recent visit was for a company party (rock star theme). This place is certainly cool enough for rock star. Long bar; leather seating; sexy paintings on the walls; dj booth + dance floor; outdoor patio. This place has it all!",
    rating: 4
  )
  monroe3 = Review.create!(
    user_id:user10.id,
    biz_id:monroe.id,
    body: "Attended a company party at Monroe and WOW,  do I love this venue! It doesn't look like much from the outside but inside you'll find the perfect intertwining of Art Deco with modern flair. The walls are covered with beautiful murals and the furniture is decked out in gorgeous velvet. What I genuinely loved about the space was that there are pockets to hang out and converse with friends, as well as a small stage and dance floor area which brings together the energy of the party. During our event we had live karaoke which everyone jovially sang and danced to for hours. It really takes a special room to do that for a group of about 130 guests and it made for a truly memorable evening we'll all remember.",
    rating: 5
  )
  monroe4 = Review.create!(
    user_id:user11.id,
    biz_id:monroe.id,
    body: "Wonderful classical music. The drinks were on point as well. Overall a lovely place to enjoy music on a Wednesday night, in a relaxed atmosphere",
    rating: 5
  )
  monroe5 = Review.create!(
    user_id:user15.id,
    biz_id:monroe.id,
    body: "You'd probably walk right past it without noticing, but the Monroe is a surprisingly large venue that has a vintage, lounge-like, speakeasy feel to it. It hosts plenty of private functions during the week as well as events ranging from Classical Revolution to Battle of the Decades. Drinks are quite reasonably priced and service is courteous and professional. Worth checking out if one of their events appeals to you.",
    rating: 4
  )
  view_lounge1 = Review.create!(
    user_id:user11.id,
    biz_id:view_lounge.id,
    body: "OH MY GOSH. Salute to Yelp and my trip to San Francisco. I was in SF for 72 hours and ended up at this place twice!! LOVED it - it is totally a touristy situation and a very elite spot. The view was AMAZING. The buildings were so tall into the fog and was such a gorgeous view. I can't get over it. ",
    rating: 5
  )
  view_lounge2 = Review.create!(
    user_id:user13.id,
    biz_id:view_lounge.id,
    body: "This lounge atop the Marriott hotel has a fantastic rooftop view (all indoors, FYI) of downtown SF. For a nice lounge, the vibe here is surprisingly laidback...You're welcome to come in and seat yourself anywhere you can find a table/chair -- even on a Friday night at 8pm!  ",
    rating: 4
  )
  view_lounge3 = Review.create!(
    user_id:user15.id,
    biz_id:view_lounge.id,
    body: "Haight-Ashbury, Soma Spritzer, Creme Bruleé and the Cheesecake. This re-shoots and lives up to the Four Stars I marked on my previous review. I'd go back to have all items for myself and in that regard, the view and the motion sickness to get up here are the bonuses. Great.",
    rating: 4
  )
  view_lounge4 = Review.create!(
    user_id:user2.id,
    biz_id:view_lounge.id,
    body: "Get here before 5PM to grab a seat by the window. Make sure you check out both sides before you call it quits. Don't be afraid to share a couch or table with another couple. $$$ cocktails. The service isn't the best, but the view makes up for any qualms, plus, the wait is totally worth it",
    rating: 4
  )
  view_lounge5 = Review.create!(
    user_id:user4.id,
    biz_id:view_lounge.id,
    body: "Wow. This is a must see in SF. The 39 floor of the Marriott marque opens up a world of sights and sounds of the City by the Bay. Take out of town guests for the evening of a lifetime.",
    rating: 5
  )

  f81 = Review.create!(
    user_id:user1.id,
    biz_id:f8.id,
    body: "I love this place if you are looking to get down on a weekday/sunday with a couple stages and fun music w/ an interesting crowd! Fun to bring friends in town who complain that there is nothing to do on weekdays or sundays (Monarch is a great spot too) and I really enjoyed myself to be honest! I would go back for sure!",
    rating: 5
  )
  f82 = Review.create!(
    user_id:user3.id,
    biz_id:f8.id,
    body: "I have been coming here a lot lately because they are always having a diverse variety of events! Last week, I saw Candy Rain and this past Friday, they had an art/music event with performance by Pluto Mars and Aux Lord. I have been here for quite a few years and they definitely have increased the quality of their speakers and have hired better bartenders! For such a stand up venue, I am not surprised that they are getting more and more awesome headliners as the years go on! F8 keep doing what you are doing, can't wait to come back!",
    rating: 4
  )
  f83 = Review.create!(
    user_id:user5.id,
    biz_id:f8.id,
    body: "Small venue playing good music! It wasn't as packed as I typically like, but the crowd is cool and the DJs are usually really good. The music tended towards hip hop when I last went.",
    rating: 4
  )
  f84 = Review.create!(
    user_id:user7.id,
    biz_id:f8.id,
    body: "Awesome local spot in a neighborhood that is changing faster than life. Support small business and come here. The door staff are chill and the bartenders are sweet. Props to Demitria for the good vibes, and someone please thank that DJ for the upbeat moving grooves. Cheers!",
    rating: 5
  )
  f85 = Review.create!(
    user_id:user9.id,
    biz_id:f8.id,
    body: "This is a pretty great spot on Folsom for a night out drinking and dancing with friends. There are DJs at the main stage in front and the back stage. The back room was quite small in my opinion so it was a little difficult to maneuver around, but good thing they had a full service bar in the back. Great music and nice venue, would come back for sure!",
    rating: 4
  )
  beer_pong1 = Review.create!(
    user_id:user2.id,
    biz_id:beer_pong.id,
    body: "The bartender was more interested in the deejay, it was so hot in the beer pong area, & the bartender also had the whole house to herself. She took two shots with the deejay while just kinda chillin. So after we said we were hot we decided to move to the front area away from where it was so hot, but again her friend was here so she was at the end of the bar taking shots. Just no customer service in this place.",
    rating: 3
  )
  beer_pong2 = Review.create!(
    user_id:user4.id,
    biz_id:beer_pong.id,
    body: "I LOVE this place!!! Great service and the beer pong is a delight!!! Plus a nice dance floor!",
    rating: 5
  )
  beer_pong3 = Review.create!(
    user_id:user6.id,
    biz_id:beer_pong.id,
    body: "They have pool, TV and beer pong table! Omg..... foods are so good. It's perfect place for football season",
    rating: 5
  )
  beer_pong4 = Review.create!(
    user_id:user8.id,
    biz_id:beer_pong.id,
    body: "awesome place- beer pong events every weekend always at least one game on, cheap beer, cool staff (Theresa and Greg are awesome), lots of fun. part of/connected to Scores sports bar- they also serve kick ass nachos sliders tacos and a bunch of other bar snacks for super cheap- GET THE SLIDERS you wont regret it! some of my favorite food on broadway",
    rating: 5
  )
  beer_pong5 = Review.create!(
    user_id:user10.id,
    biz_id:beer_pong.id,
    body: "Was here few weekends ago with friends on a Friday. Found out this place just opened not too long ago! It is attached to another bar called Score! The concept is to bring back our college memories of beer pong! On Fridays, they have this thing called Beer Olympics. It's organized by this lady and she facilitates the whole game. She had different types of games. They have multiple rounds to win the prize!",
    rating: 5
  )

  alchemist1 = Review.create!(
    user_id:user10.id,
    biz_id:alchemist.id,
    body: "Some close friends brought me here after dinner in Soma for some cocktails. It's a funky place with fun decor, couches, a great cocktail menu and some very friendly and accommodating bartenders. ",
    rating: 4
  )
  alchemist2 = Review.create!(
    user_id:user12.id,
    biz_id:alchemist.id,
    body: "I'm going to say this bar & lounge is unique! It's like being in this abandoned warehouse or huge brick-walled loft. There's an empty space in the main living area for either people standing around or a dance floor, some comfy couches to lounge in and a fully-stocked bar in the corner with a dope bartender! Their cocktail menu here is something I haven't seen before with unique blends. ",
    rating: 4
  )
  alchemist3 = Review.create!(
    user_id:user11.id,
    biz_id:alchemist.id,
    body: "Very mysterious and interesting type of bar. Very fun, have you read the book? I went here one night and yeah, it's pretty dark and that haubted house type of disney vibe is here.",
    rating: 5
  )
  alchemist4 = Review.create!(
    user_id:user13.id,
    biz_id:alchemist.id,
    body: "Good drinks, fun atmosphere!

My boyfriend and I came here before a giants game. It was only a couple of blocks away. It was nice too because they were playing the basketball playoff games on their projector. ",
    rating: 4
  )
  alchemist5 = Review.create!(
    user_id:user14.id,
    biz_id:alchemist.id,
    body: "Cool upstairs bar that is walking distance to/from AT&T Park. The tonic they use in there drinks is really good so if you are a vodka tonic fan I recommend trying it. Seems to be a pretty popular spot. Took a little bit to get a drink due to the crowed but like I said the drinks were good and you can tell most people behind the bar are legit bartenders. The look and feel of this place is unique and trendy. Great spot to grab a drink or 3 after a game!",
    rating: 4
  )


  teahut1 = Review.create!(
    user_id:user3.id,
    biz_id:teahut.id,
    body: "I discovered this place from the NorCal Night Market and was not disappointed. The drink was fresh and the drink was a lot different than other places. They used fresh fruits and the cup itself is interesting... wish they were reusable! Me and my friends order 4 and finished them fast.",
    rating: 5
  )
  teahut2 = Review.create!(
    user_id:user5.id,
    biz_id:teahut.id,
    body: "I ordered the fruit fusion tea with 50% sweetness. It was the perfect amount of sweetness and tea flavor for me but I'll be honest, the fruit inside makes it a bit difficult to drink. You're left with only a few sips of the actual tea drink and you have a bunch of leftover boba and chunks of fruit. If you're fine with scooping out the boba's and fruit, I'd recommend this one.",
    rating: 3
  )
  teahut3 = Review.create!(
    user_id:user7.id,
    biz_id:teahut.id,
    body: "I got the grapefruit green tea and was pleasantly surprised. The drink itself is lightly blended with ice and it's actually delightful this way! No ice cubes to get in the way lol. It was refreshing and tart-- my kinda drink! It also came with fresh grapefruit slices which were more of an aesthetic thing but still a nice touch :-) ",
    rating: 5
  )
  teahut4 = Review.create!(
    user_id:user9.id,
    biz_id:teahut.id,
    body: "We ordered the fruit fusion green tea and it's really good. There's a lot of fresh fruit in the drink, but because there's a lot of fruit inside, I feel like there's not much of the tea. It's also expensive because the total came out to $6~ for just one drink...",
    rating: 4
  )
  teahut5 = Review.create!(
    user_id:user11.id,
    biz_id:teahut.id,
    body: "Stopped by before closing and no regrets! This is a very minimalistic and quick boba place if you're craving something sweet. They have a fair selection of plain teas, milk teas and fruity options. I ordered the strawberry energy which was a cold, slightly slushy strawberry drink. I added cheese cream on top which made it creamier and almost a smoothie-like texture! Surprisingly, the cheese cream was the perfect add-on! ",
    rating: 5
  )

  identitea1 = Review.create!(
    user_id:user2.id,
    biz_id:identitea.id,
    body: "Best oolong milk tea I've had in awhile. Boba was the perfect texture. Love the unique concept and how they celebrate sf's neighborhoods. Employees were so kind and helped me when I was being indecisive.",
    rating: 5
  )
  identitea2 = Review.create!(
    user_id:user4.id,
    biz_id:identitea.id,
    body: "I came in for my first time and was really excited that they had some drink specials that I hadn't seen before. I went for The Castro which has guava and lychee and was not disappointed! I see how it could be too sweet for some but I really enjoyed it. I removed one star because the guy behind the counter forgot to make my drink and served about 3 other people before I had to ask for mine. However, they were very polite about it and gave me an upgrade on size so I appreciated their effort! I'm looking forward to coming back to try their other signature drinks",
    rating: 4
  )
  identitea3 = Review.create!(
    user_id:user6.id,
    biz_id:identitea.id,
    body: "I wanted to try their matcha drink but they said no more match on that day, I ended up trying the sunset drink which was tasteless, I expected it will taste sweet because it has lychee in it, but not sweet at all 3stars because the cashier was nice and friendly",
    rating: 3
  )
  identitea4 = Review.create!(
    user_id:user8.id,
    biz_id:identitea.id,
    body: "Came here right after eating pizza across the street. I ordered the Mission (house roasted milk tea with grass jelly). Got it half sweet and I really enjoyed the flavor. I also love that the tea was lactose and dairy free. Shout out to the employees who were friendly and helpful.",
    rating: 5
  )
  identitea5 = Review.create!(
    user_id:user10.id,
    biz_id:identitea.id,
    body: "I couldn't find this place cause I was spelling it like 'identitty' on Maps. But this place was at a perfect location because there aren't a lot of boba places around. I'm glad to have this place near my work. I got the Chinatown which was a winter melon tea and guuuurrrrrrlllll it was refreshing.",
    rating: 5
  )
  itea1 = Review.create!(
    user_id:user12.id,
    biz_id:itea.id,
    body: "Lots of flavors and good boba ball consistency. Small space and sometimes a long line...but a great place to take an afternoon boba break! Wintermelon tea was so yummy :)",
    rating: 4
  )
  itea2 = Review.create!(
    user_id:user13.id,
    biz_id:itea.id,
    body: "Loveee their mango sago drink (and if you feel like splurging, + agar boba). It's a super refreshing mango/milk drink with mango bits and sago. Also really enjoy their jasmine green milk tea (30% sugar & ice, 50% if you like your drink a little sweeter) with boba. Their milk teas are more Taiwanese than American (they have that milkier taste rather than strong tea taste), so I come here when I'm craving that. Their boba can be pretty good for the most part, but there have been a few times where it hasn't been sweet enough.",
    rating: 5
  )
  itea3 = Review.create!(
    user_id:user14.id,
    biz_id:itea.id,
    body:  "Meh, possibly I'm spoiled by the abundance of boba tea places in the South Bay, but this place just didn't do it for me. It's small, terrible lay out if you haven't been there before (you'll end up standing in the line where people are waiting for their drinks), and the tea was just mediocre at best. Boba was fair, nothing great. ",
    rating: 2
  )
  itea4 = Review.create!(
    user_id:user15.id,
    biz_id:itea.id,
    body: "Typical boba joint, but it was definitely packed around 3PM on a weekday. I got the matcha green tea with just the red bean topping since I wasn't really feelin' matcha jelly. 50% sweet and 30% ice. OMG, it totally hit the spot! I admit I'd never gotten red bean as a topping with matcha green tea before, but now I find myself wondering when I'll be back so I can get it again!",
    rating: 5
  )
  itea5 = Review.create!(
    user_id:user1.id,
    biz_id:itea.id,
    body: "It's nice that the variety and taste of drinks at iTea stays pretty much the same from store to store. The only difference is the food they serve, if any. I especially love the beef over rice! A bit pricey, but it does fill you up. Their egg puffs are delicious as well, super crunchy on the outside and soft in the inside. The drinks weren't bad and the boba tasted pretty fresh. ",
    rating:3
  )

  teaspoon1 = Review.create!(
    user_id:user11.id,
    biz_id:teaspoon.id,
    body: "A solid boba shop that doesn't close so early. The girl was nice enough to give me access to the restroom so props to her. Moreover they are very clear with their message about being loyal to their customers (see photos below!). Will come back again.",
    rating: 5
  )
  teaspoon2 = Review.create!(
    user_id:user12.id,
    biz_id:teaspoon.id,
    body: "Teaspoon has a great ambience. Their menu is very simple to follow and it doesn't overwhelm you with lots of options. Their jasmine milk tea was very nice and had just the right amount of a floral kick. I can't speak for their boba but I imagine it was just as tasty. ",
    rating: 4
  )
  teaspoon3 = Review.create!(
    user_id:user13.id,
    biz_id:teaspoon.id,
    body: "I came here on a Saturday afternoon and had to wait in line for about 10 minutes. The place itself isn't very large - it has very limited seating and I didn't see any board games or anything of that sort so I'm not sure it's really a place you could chill at with a large group. I only came here with one other person so it wasn't a problem for me, but it's something to consider if you're trying to go here with a number of friends. ",
    rating: 3
  )
  teaspoon4 = Review.create!(
    user_id:user14.id,
    biz_id:teaspoon.id,
    body: "I love bubble tea and I'm mad I walked past it so many times. The boba is soft sweet and delicious. The also have a lot of options and make ur own flavors. I would definitely return and I would absolutely recommend.",
    rating: 5
  )
  teaspoon5 = Review.create!(
    user_id:user15.id,
    biz_id:teaspoon.id,
    body: "I've been here a handful of times and it's always a clusterfk.  You have to wait at least 10 minutes to even get your order taken.  There are always 2-3 people working but it seems like they need more workers, or they need to streamline how they produce the orders.  If you want better service and quality drinks try Boba Guys.",
    rating: 3
  )

  quali1 = Review.create!(
    user_id:user6.id,
    biz_id:quali.id,
    body: "This is a perfect boba spot with friendly employees that will help you customize your drink, a pretty and relaxing ambiance, and delicious teas! Whenever I'm in the area I love popping by.",
    rating:5
  )
  quali2 = Review.create!(
    user_id:user7.id,
    biz_id:quali.id,
    body: "I ordered the Roasted Oolong Milk Tea at 70% sweetness and loved it! I was pleasantly surprised by how big the cups are. I'm usually not a fan of oolong tea but the flavor of the milk tea was delicious creamy with hints of oolong coming through. Coming from someone with very high boba standards, the boba was pretty good - a little softer than I like but still great texture!",
    rating: 5
  )
  quali3 = Review.create!(
    user_id:user10.id,
    biz_id:quali.id,
    body: "I like how you can customize your own drink in the event you do not like any of their static menu items. I had the passion cooler with clear boba (0% sugar and no ice) and it was a nice refreshing drink that wasn't overly sweet. I could also really taste the green tea come through in the Passion cooler . The Taro kisses was made with (30% sugar and 40% ice) and the taro chunks were a nice touch, and this beverage was so good",
    rating: 4
  )
  quali4 = Review.create!(
    user_id:user8.id,
    biz_id:quali.id,
    body: "Attempted to go to another dessert place but they were closed so ended up at this boba place which was pretty satisfying and very cute inside! Ordered: matcha blossom ($5.50), golden oolong with mango star jelly ($5.25), black tea with cream",
    rating: 4
  )
  quali5 = Review.create!(
    user_id:user9.id,
    biz_id:quali.id,
    body: "Good amount of seating indoor + outdoor, interesting tea combos, and there's also a few board games to play. They're particularly good at fruity teas and use real fruit, but their milk teas are also tasty. Alternative milk options such as soy and almond are available in place of cream or whole milk. They're a tad more expensive than your average boba shop, but not obscenely so. Think Boba Guys pricing.",
    rating: 5
  )
  little_sweet1 = Review.create!(
    user_id:user11.id,
    biz_id:little_sweet.id,
    body: "Balls in milk. What more can you ask for? But really, their boba is great quality and their drinks are also amazing. Recommend the jasmine green milk tea. Pro tip: ask for a stamp card because you'll be coming back a lot",
    rating: 5
  )
  little_sweet2 = Review.create!(
    user_id:user12.id,
    biz_id:little_sweet.id,
    body: "Excellent. Ginger teas are great. small misunderstanding on our order which they went above and beyond to take care of. really nice selection of teas you don't see everywhere too. plus a number of decaf drinks, which is rare.",
    rating: 5
  )
  little_sweet3 = Review.create!(
    user_id:user13.id,
    biz_id:little_sweet.id,
    body: "The White Gourd Milk Tea is bomb!!  It's super creamy and delicious!  It's definitely my go-to when I come here.  The Jasmine Milk Tea is also great.  My sister often gets the Roasted or High Mountain with cream.  The boba is soft and chewy too.",
    rating: 4
  )
  little_sweet4 = Review.create!(
    user_id:user14.id,
    biz_id:little_sweet.id,
    body: "I was craving boba after going to the farmer's market around the corner and had been meaning to check this place out. I wanted something fruity and decided on the pineapple watermelon slush with boba at regular sweetness. My total came out to $5.50. ",
    rating: 4
  )
  little_sweet5 = Review.create!(
    user_id:user15.id,
    biz_id:little_sweet.id,
    body: "I've been here twice, the first time I ordered an Oolong milk tea which was what i was going to get the second time. However I saw that they have watermelon juice which i was so surprised at and had to jump at the opportunity to order it! The watermelon juice was AMAZINGGGGG!!! It made me so happy that it was that good because I was debating if it was going to come out good or not. My friend who I went with was not interested in getting a drink at all until she tasted my drink and then she was completely hooked hahah. If you have a chance to check out and try the watermelon juice, I definitely recommend it. You won't be disappointed at all.",
    rating: 4
  )

  spa_vitale1 = Review.create!(
    user_id: user1.id,
    biz_id:spa_vitale.id,
    body: "I had THE most unbelievable spa experience here. My wonderful boyfie surprised me with a staycation in the city and topped it off with a spa day at Spa Vitale. We had a couples massage which was GREAT. I told my masseuse I'd like her to focus on my upper back and that's exactly what she did majority of the time. ",
    rating: 5
  )
  spa_vitale2 = Review.create!(
    user_id: user2.id,
    biz_id:spa_vitale.id,
    body: "What a lovely little spa! Soaking in the tub makes it all worth while in amazing experience from beginning to and not to mention stellar Massage",
    rating: 5
  )
  spa_vitale3 = Review.create!(
    user_id: user3.id,
    biz_id:spa_vitale.id,
    body: "I sent my mom here for a birthday present and she had a massage and 25min bath.  She had a great time and loved the bath.  The massage was very basic and she wasn't too impressed.",
    rating: 3
  )
  spa_vitale4 = Review.create!(
    user_id: user4.id,
    biz_id:spa_vitale.id,
    body: "Went here for part of a girls weekend trip and had the best time! My friend and I did the bathing ritual and a massage. We both Love the tubs they had so much we have each started planning bathroom remodels to get one.",
    rating: 4
  )
  spa_vitale5 = Review.create!(
    user_id: user5.id,
    biz_id:spa_vitale.id,
    body: "Loved this place!  We chose the couple bathing ritual. It was a beautiful sunny day in the city. The location was in the balcony of the 8th floor surrounded by bamboo. They provided champagne,  berries, lemon water and tea. The water was perfect temperature infused by lavender bath salts. It was relaxing, romantic and overall amazing experience. Definitely recommend for special occasions!",
    rating: 5
  )
  burke1 = Review.create!(
    user_id: user10.id,
    biz_id: burke.id,
    body: "Wow. What a spa! Such a calm and relaxing place. Who knew that such a wonderland would be located at Westfield centre. As soon as I walked in, I was greeted with hot tea. The jacuzzi, showers, and even mirrors are amazing. My facial was wonderful. Main reason why I was there. I really needed to get my face 'fixed'. such a 'calm' and relaxing 80 minutes. The lady who worked with me was truly amazing. She was very easy to talk to and knew her stuff. I'm impressed. Worth every penny.",
    rating: 5
  )
  burke2 = Review.create!(
    user_id: user6.id,
    biz_id: burke.id,
    body: "It's nice to unwind and relax with a monthly membership.  I've had great facials from LC and Vivian.  I also do the deep tissue massage which helps relax my problematic back.I've been to many spas and BW is one of the cleanest and professional places.  All the amenities you need to pamper yourself.  It also has a sleep room in case you want to get a nap.",
    rating: 4
  )
  burke3 = Review.create!(
    user_id: user7.id,
    biz_id: burke.id,
    body: "This is my favorite spot for full pampering. I've gone for a deep tissue massage and it was really relaxing and helped relieve problematic tension areas. My mother enjoyed the facial here too. The lounge area has tea and snacks and magazines to relax and hang out. There are some sample products to try out too which is fun. There's also a relaxation room with lounge chairs to take a nap. Then the shower rooms and wet spa include hot tub, cold waterfall, dry Swedish sauna, and eucalyptus steam room. Super nice and relaxing ambiance!",
    rating: 5
  )
  burke4 = Review.create!(
    user_id: user9.id,
    biz_id: burke.id,
    body: "Real fancy and nice. Pricey, but worth treating yourself.Massage was great. I'd give it 5 stars if they offered 90 minute or even 120 minute sessions. 80 minutes is good though.",
    rating: 4
  )
  burke5 = Review.create!(
    user_id: user8.id,
    biz_id: burke.id,
    body: "I've been going to Burke Williams in both LA and San Francisco for probably 15 years now. I always considered it a luxury 'splurge' - you go for the fancy facilities (hot tub, steam room, etc). But the treatments are fairly mediocre - never once have I had a truly great massage at BW. I took a hiatus from the 'luxury spa' scene for a few years, instead spending my time/money on a really amazing trigger point masseuse.",
    rating: 2
  )
  qua1 = Review.create!(
    user_id: user15.id,
    biz_id: qua.id,
    body: "I was back after a week long camping trip with my hands really dry and cuticles torn. My hands needed attention so got an appointment for Manicure and it was the best, Tina was just great she did her magic and my hands were back to normal in the next twenty minutes. Maybe instead of going to Tina for Manicure only after a camping trip like once a year thinking of doing it more.",
    rating: 5
  )
  qua2 = Review.create!(
    user_id: user11.id,
    biz_id: qua.id,
    body: "Got a groupon special. Good small location with parking. Overall it was enjoyable and a good massage. Th place is clean and the staff was friendly, but very limited on extras and seems limited. Staff was skilled and nice; price was reasonable but limited to anything other really didn't have much to offer for mani-pedi's. Not a full service Spa on my option.",
    rating: 3
  )
  qua3 = Review.create!(
    user_id: user12.id,
    biz_id: qua.id,
    body: "Great service and staff. Especially good if you are looking for more than one session. Deep tissue massage really helped with my sport injuries and they were very happy to accommodate any requests. Booking is extremely easy as well. Highly recommend.",
    rating: 5
  )
  qua4 = Review.create!(
    user_id: user13.id,
    biz_id: qua.id,
    body: "This place is my favorite spa ever in the city. I've been their client for almost two years now. I usually go for gel manicure and pedicure, Tina is the best! She takes care of my nails like they are hers, every time I travel or go somewhere else for a reason, I deeply regret it. The staff is very friendly, Henry and Sabrina. They're all amazing, always offer tea and water and make sure that the service is great. This is my to go to spa whenever I need to get anything done!",
    rating: 5
  )
  qua5 = Review.create!(
    user_id: user14.id,
    biz_id: qua.id,
    body: "I arrived 15 minutes early, as instructed when I made my reservation, for my massage / facial package and discovered I was too early... nobody was in yet to greet me. I waited outside for ~5 minutes (in a pretty dodgy area) before anyone who worked at the spa showed up. I wasn't asked my preference in gender of massage therapist - which does matter to a lot of people getting massages. I got over it after a few minutes, but was thrown off at first. ",
    rating: 2
  )
  nob1 = Review.create!(
    user_id: user1.id,
    biz_id: nob.id,
    body: "Oh my my! This is one of the most incredible relaxing massages I have had. The staff was welcoming and very hospitable when arriving. The greeted us and escorted us to the lockers while providing a tour of the facility. We changed and prepped for our massages at 7. There was an incredible lounge with a beautiful pool to relax in while waiting. The massage was incredible. Probably one of the best I have had. After massages we had dinner at the adjacent restaurant. Even though this ended up beginning at 9:30, it was an amazing 5 courses!",
    rating: 5
  )
  nob2 = Review.create!(
    user_id: user3.id,
    biz_id: nob.id,
    body: "I came here for an 80 minute couple's massage. The overall experience was truly relaxing and the masseuses were professional and caring. I had a neck and back pain after a day of roller coaster fun, and Katrina made sure to focus on those pain points. You can also lower or raise the pressure point based on your preference. My pain was literally gone after the massage, and my partner and I experienced a body high (floating on clouds). ",
    rating: 5
  )
  nob3 = Review.create!(
    user_id: user5.id,
    biz_id: nob.id,
    body: "Finally got back to Nob Hill Spa, and this time my terrific massage therapist was Semegn. I truly think that was the best massage I've ever had. On the negative, the spa menu is in serious need of some updating in both offerings (very limited) and the quality of the food. I had a mixed greens with a few strawberries - which I'm pretty sure is the same salad I had in 2009 on my last visit...and it was overdressed, had too much cheese on it, and the bread served on the side was sort of like an egg bread....soft and not that great. With such good food (and bread!) available everywhere in the Bay Area and an allegedly great restaurant on premises, it was a real disappointment.",
    rating: 4
  )
  nob4 = Review.create!(
    user_id: user7.id,
    biz_id: nob.id,
    body: "Not very relaxing. I used to get massages regularly so I know what a quality massage feels like. This definitely wasn't it. It felt like The masseuse was tired or not well trained. I actually left more stressed and tense than when I came in (i have a headache).  From moment I laid down on the table, I was counting down the 80 mins until it was over. I'll give 2 stars for good customer service, but my back is still super tight and I actually have an appointment at a different place tomorrow. I really wanted to like this place , but for the price we paid, I expected a more luxurious experience.",
    rating: 2
  )
  nob5 = Review.create!(
    user_id: user9.id,
    biz_id: nob.id,
    body: "Such a great place to spend the day and relax! The service here is amazing, atmosphere is even better. I had a massage here with my husband and it was definitely one to remember.",
    rating: 5
  )
  pure1 = Review.create!(
    user_id: user2.id,
    biz_id: pure.id,
    body: "I had a amazing massage therapist Lenn she listened to all my aches and pains, she had perfect pressure and worked on all the right areas. I have finally found my ideal massage lady which is hard to find! She also was happy to give me advice to help my back at the end of my treatment. Thank you Lenn!",
    rating: 5
  )
  pure2 = Review.create!(
    user_id: user4.id,
    biz_id: pure.id,
    body: "One of the best massages I have ever had! Small little place in the middle of the city. The masseuse was super knowledgeable and aware of the body, the rooms were nice. Highly recommend",
    rating: 5
  )
  pure3 = Review.create!(
    user_id: user10.id,
    biz_id: pure.id,
    body: "Pure Organic Spa is a hidden gem in SF, literally. Don't let the elevator entrance throw you. The moment the door opens, its as though you're in an enchanted forrest. The decor is beautiful and it is such a relaxing environment. The lemongrass tea and almonds were a nice wind down touch. I booked two massages for a girls trip based off of these Yelp reviews. Lenn and Angela were fantastic. This is a no brainer massage spot. I absolutley recommend it.",
    rating: 4
  )
  pure4 = Review.create!(
    user_id: user6.id,
    biz_id: pure.id,
    body: "Love the ambience of the spa and that you get to select your own scented oil experience. My massage was definitely sub-par though. I bought a deep tissue massage and it was definitely more of the Swedish level. The masseuse was not adept at finding my knots and working through them...he kept finding them and then just moved along. He also seemed tired.",
    rating: 3
  )
  pure5 = Review.create!(
    user_id: user8.id,
    biz_id: pure.id,
    body: "I was in San Francisco for a holiday party, and I walked into this lovely spa right across from the Sir Francis Drake where I was staying.  WOW!  The front desk gal was so lovely and nice.  And David was the best swedish masseuse in my life.  Traveling is always hard, and it's blissful to find a good masseuse who can fix your aches and pains while you take a nap.  HIghly recommended!!  I will return next year!",
    rating: 5
  )
  kabuki1 = Review.create!(
    user_id: user11.id,
    biz_id: kabuki.id,
    body: "The facilities were extremely clean which I appreciated. Staff were constantly replenishing everything. They offer salt scrubs, cucumbers for your eyes, tea, toiletries (including plastic disposable combs which would be awesome for travel), towels... plus I am obsessed with their cucumber shower gel. It smells like watermelon!!! ",
    rating: 5
  )
  kabuki2 = Review.create!(
    user_id: user13.id,
    biz_id: kabuki.id,
    body: "I love this place!!! I have been coming here on the women only days for a couple of years now. It is fabulous and so rejuvenating to drink tea while going from the steam room, hot tub and dry sauna room. I love scrubbing with salts and laying down in the steam room. Also got my first massage there recently with Louise. She was great! She worked on my neck and shoulders and she released so much tension that I didn't realize I was holding on to.",
    rating: 5
  )
  kabuki3 = Review.create!(
    user_id: user15.id,
    biz_id: kabuki.id,
    body: "I husband and I went here to have a massage and spa day for our anniversary. It was nice and relaxing. I have never had a shiatsu massage before so I didn't know what to expect. I thought it was nice and pleasant, but not the kind of massage that gets knots out of your muscles - more pressure point focused it seems. Overall I enjoyed it.",
    rating: 4
  )
  kabuki4 = Review.create!(
    user_id: user9.id,
    biz_id: kabuki.id,
    body: "Amazing. Love the communal Was so relaxing we actually successfully conceived that night at home!!!",
    rating: 5
  )
  kabuki5 = Review.create!(
    user_id: user7.id,
    biz_id: kabuki.id,
    body: "
This spa is the place to go if you're looking for a Japanese styles communal bath spa experience. The staff is friendly and efficient which is appreciated as it can get pretty busy there sometimes. Surrounded by good eats and a highly rated movie theatre, this is the spot for when you need that rest and relaxation.",
    rating: 5
  )
  earthbody1 = Review.create!(
    user_id: user12.id,
    biz_id: earthbody.id,
    body: "I had an amazing 90 minute massage with Danielle. I chose the Inspired Repattern and it came with a mini ritual of my choice. I told Danielle it was tough to choose between the facial massage, neck therapy and hot stone foot massage since they all sounded so amazing. She ended up doing a little bit of each on me and it was incredible! She really got deep into my muscles and made me so relaxed",
    rating: 5
  )
  earthbody2 = Review.create!(
    user_id: user14.id,
    biz_id: earthbody.id,
    body: "The massage was ok. It was a bit too strong for my taste. I mentioned that I needed more work done on my right side. It never happened! The masseuse seemed to go through the motions. I also said that the hot towels were too hot for me. I still got them put on me after I mentioned that. Then, there was no scalp or foot massage! What is up with that? Why not? A disappointing experience after really looking forward to a good massage. :(",
    rating: 2
  )
  earthbody3 = Review.create!(
    user_id: user8.id,
    biz_id: earthbody.id,
    body: "I passed by here one day and it was closed so I grabbed a menu and mulled it over for a couple days. I decided to splurge on a facial (usually go to Pratima in NYC) and a forearm/hand massage. Amy was incredible!!!! I left looking and feeling extremely relaxed and about 12 years younger. It was the standard earthbody facial I believe. I left with some natural products and even bought a gift certificate for my friend to come and see Amy (it was THAT good!) Honestly the staff is so lovely and the treatments so top notch, this will definitely be my go-to spot whenever I'm in SF.",
    rating: 5
  )
  earthbody4 = Review.create!(
    user_id: user6.id,
    biz_id: earthbody.id,
    body: "Every time I leave here, I feel like I'm coming back from a little vacation. It's so warm and welcoming and relaxing, and everything is designed for your comfort. I love the tea and snacks before and after a service, and I can never resist trying out the products lined up on the wall - I keep some at my desk at work to bring some of the earthbody relaxation into my everyday. :)",
    rating: 5
  )
  earthbody5 = Review.create!(
    user_id: user4.id,
    biz_id: earthbody.id,
    body: "I have been going to Earthbdoy for a long time and I love it. It's clean, relaxing and I feel pampered by everyone there. Great scheduling app, responsive with calls and emails, and great massage therapists. I like to go to Rhea because I feel like she really cares about getting the knots out. She's super attentive, cheerful and professional.",
    rating: 5
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

  review3_1 = Review.create!(
    user_id: user10.id,
    biz_id: biz3.id,
    body: "This was probably one of the better bowls of ramen I've had!  I literally held my bowl up and drank all of the soup broth!\n\nWe ordered the Original Ramen ($14), Crispy Mushrooms ($8), and a side of Oxtail ($5).  The Crispy Mushrooms were well-battered and flavorful.  The shimeji mushroom was nice and smooth.  The Original Ramen consists of a beef bone broth and came with incredibly tender beef filets, a delicious black truffle oil, bouncy noodles, slices of king oyster mushroom, an onsen egg, and green onions.  The ramen broth was light yet flavorful.  The king oyster mushrooms were very fresh and had a creamy coconut taste to them!  The onsen egg and noodles were cooked perfectly.  The Oxtail beef was also tender and fall off the bone, and it was marinated in a thick tomato stew that is really familiar.",
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
    body: "The HYPE exist! But be warned this is not your typical ramen spot. First of all there is a huge wait no matter what day you go on but it's definitely better on a weekday. They open pretty late so if you prefer not to wait as long I suggest going an hour before they close. Surprising they seated everyone who was waiting in line after closing. \n\nWe ordered the deviled oysters, spicy lamb ramen (added duck chashu) and a spicy tori patina ramen (added duck chashu) The duck chashu was really GOOD but wish it came with more duck. The devil oysters were pretty good too but not amazing. Next came the ramen! Finally, the broth was creamy and the noodles were thick. Just how you would eat tsukenmen (dipping ramen) I felt like it was a similar concept without the separation of the dipping. I really love how the thickness of the sauce cling onto \n\nthe ramen and the flavors were on point.",
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
    body: "Excellent fresh sushi with very reasonable price!\n\nFood: \n- hamachi carpaccio with truffle oil: the fish was very fresh and I was a bit surprised that the portion was pretty for this plate. The ponzu and the truffle oil balanced perfectly together with the fish. \n\n- scallop and ankimo spoon: it was sooo delicious that I wish it was bigger in portion. The scallop was very fresh and sweet, no fishy smell to it. The ankimo just melts in your mouth. \n\n-12 nigiri omakase: $72 - this price is very reasonable compare to other high end places. Service was excellent and ambiance, as you can tell from the picture, very dark. Waited for 1.5 hour on a Saturday night at 8PM.... so be prepared. ENJOY!",
    rating: 5)
