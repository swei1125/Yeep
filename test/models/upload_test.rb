# == Schema Information
#
# Table name: uploads
#
#  id         :bigint(8)        not null, primary key
#  user_id    :integer          not null
#  biz_id     :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class UploadTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
