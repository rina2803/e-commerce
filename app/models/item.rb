class Item < ApplicationRecord
	has_many :carts
	has_many :orders
	validates :title, presence: true, length: { in: 3..14}
    validates :description, presence: true, length: {minimum: 10, maximum: 100}
    validates :image_url, presence: true, format: {with: /\.(png|jpg|gif)\Z/i}
end
