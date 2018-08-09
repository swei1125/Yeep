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

require 'test_helper'

class BizTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
