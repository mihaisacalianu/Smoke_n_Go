require 'date'

puts "Cleaning Database"
Booking.destroy_all
Bbq.destroy_all
User.destroy_all
puts "Cleaned DB"

puts "> Creating Users"
new_user_1 = User.create!(first_name: "Tom", last_name: "Jones", email: "tom@gmail.com", password: "123456", address: "E2 7RG")
new_user_2 = User.create!(first_name: "Ben", last_name: "Hill", email: "ben@gmail.com", password: "123456", address: "E1 6QR")
new_user_3 = User.create!(first_name: "Simon", last_name: "Brown", email: "simon@gmail.com", password: "123456", address: "WC1B 3DG")
new_user_4 = User.create!(first_name: "George", last_name: "Green", email: "george@gmail.com", password: "123456", address: "SE22 8AH")
new_user_5 = User.create!(first_name: "Neel", last_name: "Smith", email: "neel@gmail.com", password: "123456", address: "W11 3LN")
puts "#{User.count} users created"

puts "> Creating BBQs"
new_bbq_1 = Bbq.create!(name: "Grill Master 3000", description: "A premium charcoal grill designed for the ultimate BBQ experience with even heating and easy cleaning.This BBQ ensures perfectly cooked food with minimal effort, featuring a sleek design and durable build for long-term use in any outdoor setting.", address: "221B Baker Street, London", price: rand(10..65), brand: "Weber", fuel_type: "Charcoal", grill_size: "2 people", user: new_user_1)
new_bbq_2 = Bbq.create!(name: "Smoky Delight", description: "Enjoy rich smoky flavors with this high-quality smoker, perfect for backyard gatherings and picnics. Built with advanced temperature control and an easy-to-clean ash removal system, this BBQ offers both convenience and superior taste for all your grilling needs.", address: "10 Downing Street, London", price: rand(10..65), brand: "Traeger", fuel_type: "Gas", grill_size: "4 people", user: new_user_2)
new_bbq_3 = Bbq.create!(name: "The Big Egg", description: "Versatile and durable ceramic BBQ that retains heat exceptionally well for slow and steady cooking. Designed for both beginners and seasoned grill masters, it features a unique dome-shaped build to lock in moisture and deliver juicy, flavorful meats.", address: "30 St Mary Axe, London", price: rand(10..65), brand: "Big Green Egg", fuel_type: "Charcoal", grill_size: "6 people", user: new_user_3)
new_bbq_4 = Bbq.create!(name: "Napoleon Inferno", description: "High-powered gas BBQ with multiple burners and infrared heating for the perfect steak sear. Equipped with an auto-ignition system and high-temperature settings, this BBQ is designed to cook meals quickly while maintaining tenderness and smoky flavor.", address: "1 Canada Square, London", price: rand(10..65), brand: "Napoleon", fuel_type: "Gas", grill_size: "8 people", user: new_user_4)
new_bbq_5 = Bbq.create!(name: "Yoder Pitmaster", description: "Built for serious grillers, this BBQ smoker delivers competition-level performance at home. Its robust construction, easy-access firebox, and precision airflow control allow you to smoke meats to perfection over extended cooking times.", address: "Tower Bridge Road, London", price: rand(10..65), brand: "Yoder Smokers", fuel_type: "Charcoal", grill_size: "10+ people", user: new_user_5)
new_bbq_6 = Bbq.create!(name: "Beefeaters Supreme", description: "A high-end gas BBQ with precision control and premium stainless-steel finish for durability. This grill is designed for efficiency, with rapid pre-heating capabilities and an advanced burner system to distribute heat evenly across the cooking surface.", address: "Piccadilly Circus, London", price: rand(10..65), brand: "Beefeaters", fuel_type: "Gas", grill_size: "4 people", user: new_user_1)
new_bbq_7 = Bbq.create!(name: "Fire Pit Pro", description: "Compact yet powerful electric BBQ, ideal for apartment balconies and small patios. It features rapid heat-up technology, an easy-to-use digital display, and smokeless operation, making it perfect for urban grilling without the hassle of charcoal or gas.", address: "Oxford Street, London", price: rand(10..65), brand: "Other", fuel_type: "Electric", grill_size: "2 people", user: new_user_2)
new_bbq_8 = Bbq.create!(name: "Ultimate Backyarder", description: "An all-in-one outdoor cooking station featuring a grill, smoker, and side burner. Whether you're grilling burgers, smoking ribs, or searing steaks, this BBQ provides professional results with its high-efficiency burner and spacious cooking area.", address: "Regent Street, London", price: rand(10..65), brand: "Napoleon", fuel_type: "Gas", grill_size: "6 people", user: new_user_3)
new_bbq_9 = Bbq.create!(name: "Woodfire King", description: "Perfect for slow smoking meats with a wood pellet system and precise temperature control. With an automatic pellet feed and smart digital temperature monitoring, this BBQ ensures even smoking, making it a must-have for BBQ enthusiasts.", address: "Hammersmith Apollo, London", price: rand(10..65), brand: "Traeger", fuel_type: "Charcoal", grill_size: "8 people", user: new_user_4)
new_bbq_10 = Bbq.create!(name: "Steakhouse Pro", description: "A powerful BBQ grill with high heat zones to give your steaks that perfect restaurant sear. The cast-iron grates and infrared burner technology ensure a flawless cooking experience, delivering consistent results every time.", address: "Buckingham Palace Road, London", price: rand(10..65), brand: "Beefeaters", fuel_type: "Gas", grill_size: "10+ people", user: new_user_5)
new_bbq_11 = Bbq.create!(name: "Charcoal King", description: "A robust and heavy-duty charcoal grill designed for serious BBQ lovers. Comes with adjustable grates for precise heat control.", address: "Greenwich Park, London", price: rand(10..65), brand: "Weber", fuel_type: "Charcoal", grill_size: "6 people", user: new_user_1)
new_bbq_12 = Bbq.create!(name: "Electric Sizzle", description: "A compact and easy-to-use electric BBQ that delivers excellent grilling results with no hassle. Perfect for small spaces.", address: "Soho Square, London", price: rand(10..65), brand: "Other", fuel_type: "Electric", grill_size: "2 people", user: new_user_2)
new_bbq_13 = Bbq.create!(name: "Mega Smoker", description: "A professional-grade smoker that delivers incredible wood-fired flavors with automated controls for effortless smoking.", address: "Hammersmith Bridge, London", price: rand(10..65), brand: "Yoder Smokers", fuel_type: "Charcoal", grill_size: "10+ people", user: new_user_3)
new_bbq_14 = Bbq.create!(name: "Napoleon Prestige", description: "A top-tier gas grill with high-precision burners and an expansive cooking surface, perfect for large BBQ parties.", address: "Camden Market, London", price: rand(10..65), brand: "Napoleon", fuel_type: "Gas", grill_size: "8 people", user: new_user_4)
new_bbq_15 = Bbq.create!(name: "Traeger Pro Series", description: "A pellet grill that combines the ease of gas with the flavor of charcoal, offering an unbeatable smoking experience.", address: "Shoreditch High Street, London", price: rand(10..65), brand: "Traeger", fuel_type: "Charcoal", grill_size: "8 people", user: new_user_5)
new_bbq_16 = Bbq.create!(name: "Backyard Beast", description: "An all-in-one BBQ station featuring a rotisserie, multiple burners, and a high-powered sear station.", address: "Victoria Embankment, London", price: rand(10..65), brand: "Beefeaters", fuel_type: "Gas", grill_size: "10+ people", user: new_user_1)
new_bbq_17 = Bbq.create!(name: "City Griller", description: "A sleek and modern electric BBQ designed for fast and easy grilling in urban settings.", address: "Leicester Square, London", price: rand(10..65), brand: "Other", fuel_type: "Electric", grill_size: "4 people", user: new_user_2)
new_bbq_18 = Bbq.create!(name: "Grill Titan", description: "A massive, high-performance gas grill with six burners, perfect for hosting large BBQ events. Features include an integrated rotisserie and side burners for additional cooking versatility.", address: "Liverpool Street, London", price: rand(10..65), brand: "Napoleon", fuel_type: "Gas", grill_size: "10+ people", user: new_user_3)
new_bbq_19 = Bbq.create!(name: "Urban Flame", description: "A stylish and compact charcoal grill designed for city dwellers who love BBQing on balconies or rooftops. Its efficient heat retention allows for fast and flavorful grilling.", address: "Covent Garden, London", price: rand(10..65), brand: "Weber", fuel_type: "Charcoal", grill_size: "4 people", user: new_user_1)
new_bbq_20 = Bbq.create!(name: "Smoker XL", description: "A top-tier smoker with an automated wood pellet feeding system for long, slow smoking sessions. Ideal for briskets, ribs, and pulled pork with an unmatched smoky flavor.", address: "Borough Market, London", price: rand(10..65), brand: "Traeger", fuel_type: "Charcoal", grill_size: "8 people", user: new_user_5)
puts "#{Bbq.count} bbqs created"

puts "> Creating Bookings"
users = [new_user_1, new_user_2, new_user_3, new_user_4, new_user_5]
bbqs = (1..20).map { |i| eval("new_bbq_#{i}") }

20.times do
  user = users.sample
  bbq = bbqs.sample
  start_date = Date.new(2025, rand(3..9), rand(1..28))
  end_date = start_date + 4

  Booking.create!(user: user, bbq: bbq, start_date: start_date, end_date: end_date)
end
puts "#{Booking.count} bookings created"

puts "You're Welcome"
