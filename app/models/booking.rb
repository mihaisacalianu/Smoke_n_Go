class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :bbq

  # Changed default value of start_date to today and removed presence true
  validates :end_date, presence: true
  validates :end_date, comparison: { greater_than_or_equal_to: :start_date }
end
