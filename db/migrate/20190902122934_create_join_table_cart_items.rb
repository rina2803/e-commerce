class CreateJoinTableCartItems < ActiveRecord::Migration[6.0]
  def change
    create_table :join_table_cart_items do |t|
    	t.belongs_to :item
    	t.belongs_to :cart

      t.timestamps
    end
  end
end
