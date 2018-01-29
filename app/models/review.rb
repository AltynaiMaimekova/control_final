class Review < ApplicationRecord
  belongs_to :place
  belongs_to :user

  validates :user_id, presence: true
  validates :place_id, presence: true
  validates :content, presence: true,
  					length: {minimum:1, maximum: 150}
  validates :food, presence: true
  validates :service, presence: true
  validates :interior, presence: true

end
