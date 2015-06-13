class CreateReservationdetails < ActiveRecord::Migration
  def change
    create_table :reservationdetails do |t|
      t.integer :quantityentree
      t.integer :quantitycourse
      t.references :reservation, index: true
      t.references :entree, index: true
      t.references :course, index: true

      t.timestamps
    end
  end
end
