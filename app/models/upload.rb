class Upload < ApplicationRecord
  validates :user_id, :biz_id, presence: true

  belongs_to :user
  belongs_to :biz

  has_one_attached :photo
end
