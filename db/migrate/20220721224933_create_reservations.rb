class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.string :name, null:false
      t.integer :people, null:false
      t.integer :tables, null:false
      t.date :date, null:false
      t.time :time, null:false

      t.timestamps
    end
  end
end
