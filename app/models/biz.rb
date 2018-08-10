# == Schema Information
#
# Table name: bizs
#
#  id           :bigint(8)        not null, primary key
#  name         :string           not null
#  price        :string           not null
#  address      :string           not null
#  city         :string           not null
#  latitude     :float            not null
#  longitude    :float            not null
#  phone_number :integer          not null
#  user_id      :integer          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
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
end
