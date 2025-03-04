class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bookings
  has_many :bbqs

  # User validations for the following are handled via Devise (views/devise/registrations/new):
  #   first_name
  #   last_name
  #   location
  #   email (Devise also handles uniqueness)
  #   password
end
