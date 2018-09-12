biz1 = Biz.create!(
  name:'B Patisserie',
  category: 'Bakeries',
  price:'$$',
  address:'2821 California St',
  city: 'San Francisco',
  state: 'CA',
  zip: 94115,
  latitude: 37.787867,
  longitude: -122.440868,
  phone_number: "(415) 440-1700",
  user_id: 1,
  price_range: 'Moderate',
  delivery: 'No',
  take_out: 'Yes',
  credit_card: 'Yes',
  apple_pay: 'No',
  google_pay: 'No',
  parking: 'Street',
  bike_parking: 'Yes',
  for_kids: 'No',
  caters: 'Yes',
  dog_allowed: 'Yes',
  wheelchair: 'Yes',
  appointment_only: 'No',
  neutral_restrooms: 'Yes',
  hours: [
    ["8:00", "18:00"],
    ["8:00", "18:00"],
    ["8:00", "18:00"],
    ["8:00", "18:00"],
    ["8:00", "18:00"],
    ["8:00", "18:00"],
    ["8:00", "18:00"]
  ]
)
biz2 = Biz.create!(
  name:'Tartine Bakery & Cafe',
  category: 'Bakeries',
  price:'$$',
  address:'600 Guerrero St',
  city: 'San Francisco',
  state: 'CA',
  zip: 94110,
  latitude: 37.761429,
  longitude: -122.424018,
  phone_number: "(415) 487-2660",
  user_id: 1,
  price_range: '$11-30',
  reservation: 'No',
  delivery: 'No',
  take_out: 'Yes',
  credit_card: 'Yes',
  apple_pay: 'No',
  google_pay: 'No',
  good_for: 'Breakfast, Brunch',
  parking: 'Street',
  bike_parking: 'Yes',
  for_kids: 'Yes',
  for_group: 'No',
  attier: 'Casual',
  outdoor_seat: 'Yes',
  caters: 'No',
  appointment_only: 'No',
  waiter_service: 'No',
  has_tv: 'No',
  wifi: 'No',
  neutral_restrooms: 'Yes',
  hours: [
    ["8:00", "19:00"],
    ["7:30", "19:00"],
    ["7:30", "19:00"],
    ["7:30", "20:00"],
    ["7:30", "20:00"],
    ["8:00", "20:00"],
    ["8:00", "20:00"]
  ]
)
biz3 = Biz.create!(
  name:'Mr Holmes Bakehouse',
  category: 'Bakeries',
  price:'$$',
  address:'1042 Larkin St',
  city: 'San Francisco',
  state: 'CA',
  zip: 94109,
  latitude: 37.787628,
  longitude: -122.418293,
  phone_number: "(415) 829-7700",
  user_id: 1,
  price_range: 'Moderate',
  delivery: 'Yes',
  take_out: 'Yes',
  credit_card: 'Yes',
  apple_pay: 'Yes',
  google_pay: 'Yes',
  parking: 'Street',
  bike_parking: 'Yes',
  for_kids: 'Yes',
  caters: 'No',
  appointment_only: 'No',
  wheelchair: 'Yes',
  dog_allowed: 'No',
  hours: [
    ["7:00", "14:30"],
    ["7:00", "14:30"],
    ["7:00", "14:30"],
    ["7:00", "14:30"],
    ["7:00", "14:30"],
    ["8:00", "15:30"],
    ["8:00", "15:30"]
  ]
)
biz4 = Biz.create!(
  name:'Golden Gate Bakery',
  category: 'Bakeries',
  price:'$',
  address:'1029 Grant Ave',
  city: 'San Francisco',
  state: 'CA',
  zip: 94133,
  latitude: 37.796313,
  longitude: -122.406837,
  phone_number: "(415) 781-2627",
  user_id: 1,
  price_range: 'Inexpensive',
  delivery: 'No',
  take_out: 'Yes',
  credit_card: 'Yes',
  apple_pay: 'No',
  google_pay: 'No',
  parking: 'Street',
  bike_parking: 'No',
  for_kids: 'Yes',
  caters: 'No',
  appointment_only: 'No',
  dog_allowed: 'No',
  hours: [
    ["8:00", "20:00"],
    ["8:00", "20:00"],
    ["8:00", "20:00"],
    ["8:00", "20:00"],
    ["8:00", "20:00"],
    ["8:00", "20:00"],
    ["8:00", "20:00"]
  ]
)
biz5 = Biz.create!(
  name:'Schubert’s Bakery',
  category: 'Bakeries',
  price:'$$',
  address:'521 Clement St',
  city: 'San Francisco',
  state: 'CA',
  zip: 94118,
  latitude: 37.782794,
  longitude: -122.464895,
  phone_number: "(415) 752-1580",
  user_id: 1,
  price_range: 'Moderate',
  delivery: 'No',
  take_out: 'Yes',
  credit_card: 'Yes',
  apple_pay: 'No',
  google_pay: 'Yes',
  parking: 'Street',
  bike_parking: 'Yes',
  caters: 'Yes',
  appointment_only: 'No',
  wheelchair: 'Yes',
  hours: [
    ["7:00", "18:30"],
    ["7:00", "18:30"],
    ["7:00", "18:30"],
    ["7:00", "18:30"],
    ["7:00", "18:30"],
    ["7:00", "18:30"],
    ["9:00", "16:00"]
  ]
)
biz4 = Biz.create!(
  name:'Craftsman and Wolves',
  category: 'Bakeries',
  price:'$$',
  address:'746 Valencia St',
  city: 'San Francisco',
  state: 'CA',
  zip: 94110,
  latitude: 37.760924,
  longitude: -122.421783,
  phone_number: "(415) 913-7713",
  user_id: 1,
  price_range: '$11-30',
  reservation: 'No',
  delivery: 'No',
  take_out: 'Yes',
  credit_card: 'Yes',
  apple_pay: 'No',
  google_pay: 'No',
  good_for: 'Breakfast, Brunch',
  parking: 'Street',
  bike_parking: 'Yes',
  for_kids: 'Yes',
  for_group: 'Yes',
  attier: 'Casual',
  outdoor_seat: 'Yes',
  wifi: 'Free',
  has_tv: 'No',
  caters: 'Yes',
  appointment_only: 'No',
  wheelchair: 'Yes',
  neutral_restrooms: 'Yes',
  hours: [
    ["7:00", "17:00"],
    ["7:00", "17:00"],
    ["7:00", "17:00"],
    ["7:00", "17:00"],
    ["7:00", "17:00"],
    ["8:00", "17:00"],
    ["8:00", "17:00"]
  ]
)