class ChangeDataTypeForTime < ActiveRecord::Migration[7.0]
  def change
    change_column :reservations, :time, :datetime
  end
end
