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

require 'test_helper'

class BizTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
