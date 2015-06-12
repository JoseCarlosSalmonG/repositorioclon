class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.date :date
      t.string :address
      t.references :customer, index: true
      t.references :local, index: true
      t.references :payment, index: true

      t.timestamps
    end
  end
end
