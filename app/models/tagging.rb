# == Schema Information
#
# Table name: taggings
#
#  id         :bigint(8)        not null, primary key
#  tag_id     :integer          not null
#  biz_id     :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Tagging < ApplicationRecord
  validates :tag_id, :biz_id, presence: true

  belongs_to :tag
  belongs_to :biz
end
