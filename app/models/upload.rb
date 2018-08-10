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

class Upload < ApplicationRecord
  validates :user_id, :biz_id, presence: true

  belongs_to :user
  belongs_to :biz

  has_one_attached :photo
end
