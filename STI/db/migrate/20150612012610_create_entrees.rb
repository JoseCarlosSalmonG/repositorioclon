class CreateEntrees < ActiveRecord::Migration
  def change
    create_table :entrees do |t|
      t.string :name
      t.string :price
      t.integer :stock

      t.timestamps
    end
  end
end
