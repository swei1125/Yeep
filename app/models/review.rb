# == Schema Information
#
# Table name: reviews
#
#  id         :bigint(8)        not null, primary key
#  user_id    :integer          not null
#  biz_id     :integer          not null
#  body       :text             not null
#  rating     :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Review < ApplicationRecord
  validates :user_id, :biz_id, :body, :rating, presence: true
  validates :rating, inclusion: { in: [1, 2, 3, 4, 5] }

  belongs_to :user
  belongs_to :biz
end
