require 'date'
require 'open-uri'

puts "Cleaning Database"
Booking.destroy_all
Bbq.destroy_all
User.destroy_all
puts "Cleaned Database"

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

puts "> Attaching images to BBQs"
image_1 = URI.parse("https://res.cloudinary.com/deogjsihz/image/upload/v1741349789/bbq1_kffcgv.jpg").open
new_bbq_1.photo.attach(io: image_1, filename: "bbq.png", content_type: "image/png")
new_bbq_1.save

image_2 = URI.parse("https://res.cloudinary.com/deogjsihz/image/upload/v1741349789/bbq2_qifobd.jpg").open
new_bbq_2.photo.attach(io: image_2, filename: "bbq.png", content_type: "image/png")
new_bbq_2.save

image_3 = URI.parse("https://res.cloudinary.com/deogjsihz/image/upload/v1741349789/bbq3_mzyroq.jpg").open
new_bbq_3.photo.attach(io: image_3, filename: "bbq.png", content_type: "image/png")
new_bbq_3.save

image_4 = URI.parse("https://res.cloudinary.com/deogjsihz/image/upload/v1741349789/bbq4_whzf9z.jpg").open
new_bbq_4.photo.attach(io: image_4, filename: "bbq.png", content_type: "image/png")
new_bbq_4.save

image_5 = URI.parse("https://res.cloudinary.com/deogjsihz/image/upload/v1741349789/bbq5_olus5t.jpg").open
new_bbq_5.photo.attach(io: image_5, filename: "bbq.png", content_type: "image/png")
new_bbq_5.save

image_6 = URI.parse("https://res.cloudinary.com/deogjsihz/image/upload/v1741349789/bbq6_ti8okp.jpg").open
new_bbq_6.photo.attach(io: image_6, filename: "bbq.png", content_type: "image/png")
new_bbq_6.save

image_7 = URI.parse("https://res.cloudinary.com/deogjsihz/image/upload/v1741349789/bbq7_zp5knh.jpg").open
new_bbq_7.photo.attach(io: image_7, filename: "bbq.png", content_type: "image/png")
new_bbq_7.save

image_8 = URI.parse("https://res.cloudinary.com/deogjsihz/image/upload/v1741349789/bbq8_dy0km0.jpg").open
new_bbq_8.photo.attach(io: image_8, filename: "bbq.png", content_type: "image/png")
new_bbq_8.save

image_9 = URI.parse("https://res.cloudinary.com/deogjsihz/image/upload/v1741349789/bbq9_uusbxm.jpg").open
new_bbq_9.photo.attach(io: image_9, filename: "bbq.png", content_type: "image/png")
new_bbq_9.save

image_10 = URI.parse("https://res.cloudinary.com/deogjsihz/image/upload/v1741350780/bbq10_pxiqsu.jpg").open
new_bbq_10.photo.attach(io: image_10, filename: "bbq.png", content_type: "image/png")
new_bbq_10.save

image_11 = URI.parse("https://res.cloudinary.com/deogjsihz/image/upload/v1741352838/bbq11_qouvo1.jpg").open
new_bbq_11.photo.attach(io: image_11, filename: "bbq.png", content_type: "image/png")
new_bbq_11.save

image_12 = URI.parse("https://res.cloudinary.com/deogjsihz/image/upload/v1741352838/bbq12_zady7i.jpg").open
new_bbq_12.photo.attach(io: image_12, filename: "bbq.png", content_type: "image/png")
new_bbq_12.save

image_13 = URI.parse("https://res.cloudinary.com/deogjsihz/image/upload/v1741352838/bbq13_iayp1r.jpg").open
new_bbq_13.photo.attach(io: image_13, filename: "bbq.png", content_type: "image/png")
new_bbq_13.save

image_14 = URI.parse("https://res.cloudinary.com/deogjsihz/image/upload/v1741352839/bbq14_fimvco.jpg").open
new_bbq_14.photo.attach(io: image_14, filename: "bbq.png", content_type: "image/png")
new_bbq_14.save

image_15 = URI.parse("https://res.cloudinary.com/deogjsihz/image/upload/v1741350305/bbq15_zov3vf.jpg").open
new_bbq_15.photo.attach(io: image_15, filename: "bbq.png", content_type: "image/png")
new_bbq_15.save

image_16 = URI.parse("https://res.cloudinary.com/deogjsihz/image/upload/v1741352839/bbq16_dpe7db.jpg").open
new_bbq_16.photo.attach(io: image_16, filename: "bbq.png", content_type: "image/png")
new_bbq_16.save

image_17 = URI.parse("https://res.cloudinary.com/deogjsihz/image/upload/v1741352841/bbq17_zzp5sm.jpg").open
new_bbq_17.photo.attach(io: image_17, filename: "bbq.png", content_type: "image/png")
new_bbq_17.save

image_18 = URI.parse("https://res.cloudinary.com/deogjsihz/image/upload/v1741350451/bbq18_aphzlo.png").open
new_bbq_18.photo.attach(io: image_18, filename: "bbq.png", content_type: "image/png")
new_bbq_18.save

image_19 = URI.parse("https://res.cloudinary.com/deogjsihz/image/upload/v1741350451/bbq19_pkqweu.jpg").open
new_bbq_19.photo.attach(io: image_19, filename: "bbq.png", content_type: "image/png")
new_bbq_19.save

image_20 = URI.parse("https://res.cloudinary.com/deogjsihz/image/upload/v1741352841/bbq20_b0yxt9.jpg").open
new_bbq_20.photo.attach(io: image_20, filename: "bbq.png", content_type: "image/png")
new_bbq_20.save
puts "> Attached 20 images"

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

puts "All done! You're welcome..."
