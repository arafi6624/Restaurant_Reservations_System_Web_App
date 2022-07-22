class Reservation < ApplicationRecord
  validates :name, :date, :time, :tables, :people, presence: true
  validate :date_cannot_be_in_the_past
  validate :max_tables_exceeded

  def date_cannot_be_in_the_past
    if !date.nil? && date < Date.today
      errors.add(:date, "cannot be in the past")
    end
  end

  def max_tables_exceeded
    if !tables.nil? && tables > 5
      errors.add(:tables, "cannot exceed 5 per reservation")
    end
  end
end
