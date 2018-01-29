class Category < ApplicationRecord
	has_many :places, dependent: :destroy
	validates :name, presence: true, length: {maximum: 50}
end
