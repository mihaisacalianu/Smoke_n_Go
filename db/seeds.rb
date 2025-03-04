puts "Cleaning Database"
Booking.destroy_all
Bbq.destroy_all
User.destroy_all
puts "Cleaned DB"


puts "< Creating Instances"
puts "Creating Users"
new_user_1=User.create!(first_name: "Tom", last_name: "Jones", email: "tom@gmail.com", password: "123456", location: "E2 7RG")
new_user_2=User.create!(first_name: "Ben", last_name: "Hill", email: "ben@gmail.com", password: "123456", location: "E1 6QR")
new_user_3=User.create!(first_name: "Simon", last_name: "Brown", email: "simon@gmail.com", password: "123456", location: "WC1B 3DG")
new_user_4=User.create!(first_name: "George", last_name: "Green", email: "george@gmail.com", password: "123456", location: "SE22 8AH")
new_user_5=User.create!(first_name: "Neel", last_name: "Smith", email: "neel@gmail.com", password: "123456", location: "W11 3LN")

puts "#{User.count} users created"

# puts "Creating BBQs"

Bbq.create!(name: "Big Bertha", description: "Whether its for a busy outdoor event or just the home, my BBQ is a fantastic choice for cooking fantastic-tasting BBQ food", location: "W11 2NN", price: 30.0, brand: "weber", fuel_type: "charcoal", grill_size: "large", user: new_user_1)
Bbq.create!(name: "Steack Machine", description: "Whether its for a busy outdoor event or just the home, my BBQ is a fantastic choice for cooking fantastic-tasting BBQ food", location: "W11 3NN", price: 15.0, brand: "other", fuel_type: "gas", grill_size: "average", user: new_user_2 )
Bbq.create!(name: "Small Bertha", description: "Whether its for a busy outdoor event or just the home, my BBQ is a fantastic choice for cooking fantastic-tasting BBQ food", location: "W11 2PA", price: 20.0, brand: "big green egg", fuel_type: "electric", grill_size: "small", user: new_user_3 )

puts "#{Bbq.count} bbqs created"
