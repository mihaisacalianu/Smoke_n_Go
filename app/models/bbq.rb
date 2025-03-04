class Bbq < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :users, through: :bookings

  fuel_type = ['charcoal', 'electric', 'gas']
  brands = ['weber', 'traeger', 'big green egg', 'napoleon', 'yoder smokers', 'beefeaters', 'other']

  validates :name, presence: true
  validates :description, presence: true, length: { minimum: 50 }
  validates :location, presence: true
  validates :price, presence: true, comparison: { greater_than: 0 }
  validates :brand, inclusion: { in: brands }
  validates :fuel_type, inclusion: { in: fuel_type }
  # Don't need presence for pick_up and delivery
  # Already have default options
end
