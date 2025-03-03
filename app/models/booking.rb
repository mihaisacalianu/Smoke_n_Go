class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :bbq

  validates :start_date, presence: true
  validates :end_date, presence: true, comparison: { greater_than_or_equal_to: :start_date }
end
