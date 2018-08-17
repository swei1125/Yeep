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

class Biz < ApplicationRecord
  validates :name, :address, :city, :state, :zip, :latitude, :longitude, :phone_number, :user_id, presence: true
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

  def self.in_location(location)
    Biz.all.select {|biz| biz.city.downcase == location.downcase}
  end

  def self.in_term(bizs, search_term)

    arr1 = bizs.select {|biz| biz.term_arr.include?(search_term.downcase)}
    arr2 = bizs.select do |biz|
      biz.tag_names.any? do |tag|
        tag.downcase == search_term.downcase
      end
    end
    arr3 = bizs.select {|biz| biz.category.downcase.split(" ").include?(search_term.downcase)}
    result = arr1 + arr2 + arr3
    result.uniq
  end

  def term_arr
    result = []
    (0...self.name.length).each do |i|
      (i+2..self.name.length).each do |j|
        result << self[i..j].downcase
      end
    end
    result
  end

  def rating
    arr = self.reviews.map{|r| r.rating}
    rate = arr.reduce(:+) / arr.length
    left = (arr.reduce(:+) / arr.length.to_f) % (arr.reduce(:+) / arr.length)
    return left < 0.5 ? rate : rate + 0.5
  end

  def review_count
    self.reviews.length
  end

  def tag_names
    self.tags.map{|t| t.name}
  end

  def top_review
    self.reviews[0].body
  end

  def top_photo
    self.uploads[0].photo
  end

end
