class CreateJoinTableOrderItems < ActiveRecord::Migration[6.0]
  def change
    create_table :join_table_order_items do |t|
      t.belongs_to :order
      t.belongs_to :item

      t.timestamps
    end
  end
end
