class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.string :name
      t.integer :people
      t.integer :tables
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
