# == Schema Information
#
# Table name: bizs
#
#  id              :bigint(8)        not null, primary key
#  name            :string           not null
#  price           :string           not null
#  address         :string           not null
#  city            :string           not null
#  latitude        :float            not null
#  longitude       :float            not null
#  phone_number    :integer          not null
#  user_id         :integer          not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  credit_card?    :string
#  apple_pay?      :string
#  google_pay?     :string
#  parking?        :string
#  bike_parking?   :string
#  take_out?       :string
#  delivery?       :string
#  outdoor_seat?   :string
#  wifi?           :string
#  has_tv?         :string
#  dog_allowed?    :string
#  reservation?    :string
#  good_for?       :string
#  waiter_service? :string
#  caters?         :string
#  for_group?      :string
#  for_kids?       :string
#  attier?         :string
#

class Biz < ApplicationRecord
  validates :name, :address, :city, :latitude, :longitude, :phone_number, :user_id, presence: true
  validates :price, inclusion: { in: %w($ $$ $$$ $$$$ $$$$$)}

  belongs_to :user

  has_many :reviews
  has_many :viewers,
  through: :reviews,
  source: :user

  has_many :taggings
  has_many :tags,
  through: :taggings,
  source: :tag

  has_many :uploads
  has_many :photos,
  through: :uploads,
  source: :photo

  def rating
    arr = self.reviews.map{|r| r.rating}
    rate = arr.reduce(:+) / arr.length
    left = (arr.reduce(:+) / arr.length.to_f) % (arr.reduce(:+) / arr.length)
    return left < 0.5 ? rate : rate + 0.5
  end

  def review_count
    self.reviews.length
  end

end
