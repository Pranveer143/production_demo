class CreateTemples < ActiveRecord::Migration[6.1]
  def change
    create_table :temples do |t|
      t.string :email

      t.timestamps
    end
    add_index :temples, :email
  end
end
