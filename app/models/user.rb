class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :places, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :pictures, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	#validates :name, presence: true, length: {maximum: 50}
end
