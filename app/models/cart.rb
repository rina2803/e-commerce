class Cart < ApplicationRecord
	belongs_to :user
	has_many :items
	has_many :join_table_cart_items
	
end
