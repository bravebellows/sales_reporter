class CreateTransactionItemDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :transaction_item_details do |t|
      t.datetime :transaction_time # Date + Time
      t.string :timezone
      t.string :category
      t.string :item_type # Item
      t.decimal :quantity
      t.string :item # Price Point name
      t.string :sku
      t.string :modifiers_applied # don't know yet what this does
      t.money :gross_sales
      t.money :discounts
      t.money :net_sales
      t.money :sales_tax
      t.string :transaction_id
      t.string :payment_id
      t.string :device_name
      t.text :notes
      t.text :details
      t.string :event_type
      t.string :location
      t.string :dining_option # Don't know what this does yet
      t.string :customer_id
      t.string :customer_name
      t.string :customer_reference_id # Don't know what this does
      t.string :unit_of_measure
      t.integer :count

      t.timestamps
    end
  end
end
