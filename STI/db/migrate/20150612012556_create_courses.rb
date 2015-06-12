class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.string :price
      t.integer :stock

      t.timestamps
    end
  end
end
