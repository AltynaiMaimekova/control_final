class Place < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :pictures, dependent: :destroy
  belongs_to :category
  belongs_to :user
  has_attached_file :image,
                    styles: { medium: '300x300>', thumb: '100x100>'},
                    default_url: '/images/:style/missing.png'
  validates_attachment_content_type :image, 
                    content_type: ['image/jpeg', 'image/gif', 'image/png']

  validates :user_id, presence: true
  validates :category_id, presence: true
  validates :title, presence: true,
  					length: {minimum:1, maximum: 30}
  validates :description, presence: true,
  					length: {minimum:1, maximum: 150}
  validates :agreement, presence: true
  validates :image, presence: true

end
