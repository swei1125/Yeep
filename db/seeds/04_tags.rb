

  biz1 = Biz.find_by_name('Cocobang')
  biz2 = Biz.find_by_name('Homeroom')
  biz3 = Biz.find_by_name('Ushi Taro')
  biz4 = Biz.find_by_name('Mensho Tokyo')
  biz5 = Biz.find_by_name('Boba Guys')
  biz6 = Biz.find_by_name('Urban Rital')
  biz7 = Biz.find_by_name("Ryoko's")
  biz8 = Biz.find_by_name('Saru Sushi Bar')

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
