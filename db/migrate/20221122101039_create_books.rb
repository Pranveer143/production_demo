class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.integer :user_id
      t.string :name
      t.integer :stock
      t.integer :price

      t.timestamps
    end
  end
end
