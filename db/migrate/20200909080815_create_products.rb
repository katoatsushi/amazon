class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :title
      t.text :detail
      t.integer :count
      t.integer :price
      t.integer :user_id

      t.timestamps
    end
  end
end
