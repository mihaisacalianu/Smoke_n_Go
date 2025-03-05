class Bbq < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :users, through: :bookings
  has_one_attached :photo

  fuel_type = ['Charcoal', 'Electric', 'Gas']
  brands = ['Weber', 'Traeger', 'Big Green Egg', 'Napoleon', 'Yoder Smokers', 'Beefeaters', 'Other']
  grill_size = ["2 people", "4 people", "6 people", "8 people", "10+ people"]

  validates :name, presence: true
  validates :description, presence: true, length: { minimum: 50 }
  validates :location, presence: true
  validates :price, presence: true, comparison: { greater_than: 0 }
  validates :brand, inclusion: { in: brands }
  validates :fuel_type, inclusion: { in: fuel_type }
  validates :grill_size, inclusion: { in: grill_size }
  # Don't need presence for pick_up and delivery
  # Already have default options
end
