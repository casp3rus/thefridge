class CreateTheFridge < ActiveRecord::Migration[5.2]
  def change
    create_table :the_fridges do |t|
      t.string :item_name
      t.string :category
      t.integer :quantity
    end
  end
end
