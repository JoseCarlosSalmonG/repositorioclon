class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :surnames
      t.string :DNI
      t.string :phone
      t.date :birth
      t.references :user, index: true

      t.timestamps
    end
  end
end
