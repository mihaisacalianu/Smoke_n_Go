puts "Cleaning Database"
Booking.destroy_all
Bbq.destroy_all
User.destroy_all
puts "Cleaned DB"


puts "< Creating Instances"
puts "< Creating Users"
new_user_1 = User.create!(first_name: "Tom", last_name: "Jones", email: "tom@gmail.com", password: "123456", address: "E2 7RG")
new_user_2 = User.create!(first_name: "Ben", last_name: "Hill", email: "ben@gmail.com", password: "123456", address: "E1 6QR")
new_user_3 = User.create!(first_name: "Simon", last_name: "Brown", email: "simon@gmail.com", password: "123456", address: "WC1B 3DG")
new_user_4 = User.create!(first_name: "George", last_name: "Green", email: "george@gmail.com", password: "123456", address: "SE22 8AH")
new_user_5 = User.create!(first_name: "Neel", last_name: "Smith", email: "neel@gmail.com", password: "123456", address: "W11 3LN")

puts "#{User.count} users created"

puts "< Creating BBQs"

new_bbq_1 = Bbq.create!(name: "Big Bertha", description: "Whether its for a busy outdoor event or just the home, my BBQ is a fantastic choice for cooking fantastic-tasting BBQ food", address: "Silk St, City of London, London EC2Y 8DS", price: 30.00, brand: "Weber", fuel_type: "Charcoal", grill_size: "2 people", user: new_user_1)
new_bbq_2 = Bbq.create!(name: "Steak Machine", description: "Whether its for a busy outdoor event or just the home, my BBQ is a fantastic choice for cooking fantastic-tasting BBQ food", address: "113-117 Farringdon Rd, London EC1R 3BX", price: 15.00, brand: "Other", fuel_type: "Gas", grill_size: "6 people", user: new_user_2 )
new_bbq_3 = Bbq.create!(name: "Small Bertha", description: "Whether its for a busy outdoor event or just the home, my BBQ is a fantastic choice for cooking fantastic-tasting BBQ food", address: "1A Princeton St, London WC1R 4AY", price: 20.00, brand: "Big Green Egg", fuel_type: "Electric", grill_size: "4 people", user: new_user_3 )
new_bbq_4 = Bbq.create!(name: "Hot Stuff", description: "Whether its for a busy outdoor event or just the home, my BBQ is a fantastic choice for cooking fantastic-tasting BBQ food", address: "119-121 Baker St, London W1U 6RY", price: 10.00, brand: "Traeger", fuel_type: "Electric", grill_size: "8 people", user: new_user_1 )
new_bbq_5 = Bbq.create!(name: "Daddy's Favourite", description: "Whether its for a busy outdoor event or just the home, my BBQ is a fantastic choice for cooking fantastic-tasting BBQ food", address: "119-121 Baker St, London W1U 6RY", price: 80.99, brand: "Other", fuel_type: "Gas", grill_size: "10+ people", user: new_user_1 )
new_bbq_6 = Bbq.create!(name: "Lucky Flames", description: "Whether its for a busy outdoor event or just the home, my BBQ is a fantastic choice for cooking fantastic-tasting BBQ food", address: "119-121 Baker St, London W1U 6RY", price: 32.00, brand: "Napoleon", fuel_type: "Charcoal", grill_size: "2 people", user: new_user_1 )
puts "#{Bbq.count} bbqs created"

puts "< Creating Bookings"

Booking.create!(user: new_user_1, bbq: new_bbq_2, start_date: Date.new(2025, 3, 6), end_date: Date.new(2025, 3, 14))
Booking.create!(user: new_user_4, bbq: new_bbq_1, start_date: Date.new(2025, 3, 6), end_date: Date.new(2025, 3, 12))
Booking.create!(user: new_user_5, bbq: new_bbq_3, start_date: Date.new(2025, 3, 9), end_date: Date.new(2025, 4, 1))

puts "#{Booking.count} bookings created"

puts "You're Welcome"
