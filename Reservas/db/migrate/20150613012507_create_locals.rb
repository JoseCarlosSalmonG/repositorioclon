class CreateLocals < ActiveRecord::Migration
  def change
    create_table :locals do |t|
      t.string :name
      t.float :latitude
      t.float :longitude
      t.string :address
      t.references :city, index: true

      t.timestamps
    end
  end
end
