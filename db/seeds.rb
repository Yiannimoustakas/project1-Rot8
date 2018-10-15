# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  Brand.destroy_all

  brand1 = Brand.create name: 'Nike', founded: '1964', ceo: 'Mark Parker', hq: 'USA', image: 'https://vignette.wikia.nocookie.net/camphalfbloodroleplay/images/b/b4/Nike-logo.png/revision/latest?cb=20140703220426'
  brand2 = Brand.create name: 'adidas', founded: '1949', ceo: 'Kasper Rørsted', hq: 'Germany', image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Adidas_Logo.svg/302px-Adidas_Logo.svg.png'
  brand3 = Brand.create name: 'Air Jordan', founded: '1983', ceo: 'Mark Parker', hq: 'USA', image: 'https://upload.wikimedia.org/wikipedia/en/thumb/c/cd/Asics.svg/250px-Asics.svg.png'
  brand4 = Brand.create name: 'New Balance', founded: '1906', ceo: 'Robert DeMartini', hq: 'USA', image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/New_Balance_logo.svg/300px-New_Balance_logo.svg.png'
  brand5 = Brand.create name: 'Vans', founded: '1966', ceo: 'Gary Schoenfeld', hq: 'USA', image: 'https://upload.wikimedia.org/wikipedia/commons/5/59/Vans_%28brand%29_logo.png'
  brand6 = Brand.create name: 'Converse', founded: '1908', ceo: 'Davide Grasso', hq: 'USA', image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/30/Converse_logo.svg/325px-Converse_logo.svg.png'

  puts "Created #{Brand.all.length} brands."

  Sneaker.destroy_all

  sneaker1 = Sneaker.create name: 'Cortez Basic Slip Kendrick Lamar White', silhouette: 'Cortez', colorway: 'White/Thunder Blue-Wolf Grey-Turf Orange', released: 'October 2018', retail_price: '100', image: 'https://stockx.imgix.net/Nike-Cortez-Basic-Slip-Kendrick-Lamar-White.png?fit=fill&bg=FFFFFF&w=1400&h=1000&auto=format,compress&trim=color&q=90'
  sneaker2 = Sneaker.create name: 'Yeezy Wave Runner 700 Solid Grey', silhouette: 'Wave Runner 700', colorway: 'Solid Grey/Chalk White/Core Black', released: 'November 2017', retail_price: '300', image: 'https://stockx-360.imgix.net/Adidas-Yeezy-Wave-Runner-700-Solid-Grey/Images/Adidas-Yeezy-Wave-Runner-700-Solid-Grey/Lv2/img36.jpg?auto=format,compress&w=1117&q=90'
  sneaker3 = Sneaker.create name: 'AJ 1 Retro High Pine Green', silhouette: '1', colorway: 'Pine Green/Sail-Black', released: 'September 2018', retail_price: '160', image: 'https://stockx-360.imgix.net/Air-Jordan-1-Retro-High-Pine-Green/Images/Air-Jordan-1-Retro-High-Pine-Green/Lv2/img36.jpg?auto=format,compress&w=1117&q=90'
  sneaker4 = Sneaker.create name: '998 Concepts Grand Tourer', silhouette: '998', colorway: 'Off White/Sea Green/Bright Red', released: 'December 2015', retail_price: '215', image: 'https://stockx-360.imgix.net/New-Balance-998-Concepts-Grand-Tourer_TruView/Images/New-Balance-998-Concepts-Grand-Tourer_TruView/Lv2/img26.jpg?auto=format,compress&w=1117&q=90'
  sneaker5 = Sneaker.create name: 'Sid Pro Supreme Black', silhouette: 'Sid Pro', colorway: 'Black/White', released: 'October 2018', retail_price: '110', image: 'https://stockx.imgix.net/Supreme-Vans-Sid-Pro-Black.jpg?fit=fill&bg=FFFFFF&w=1400&h=1000&auto=format,compress&trim=color&q=90'
  sneaker6 = Sneaker.create name: 'Chuck Taylor All-Star 70s Hi Off-White', silhouette: 'Chuck Taylor', colorway: 'White/Bold Orange-Black', released: 'October 2018', retail_price: '130', image: 'https://stockx.imgix.net/Converse-Chuck-Taylor-All-Star-70s-Hi-Off-White-Product.jpg?fit=fill&bg=FFFFFF&w=1400&h=1000&auto=format,compress&trim=color&q=90'
  sneaker7 = Sneaker.create name: 'LeBron 15 Performance Kith Closing Ceremony', silhouette: 'Lebron 15', colorway: 'Black/Black-Multi-Color', released: 'August 2018', retail_price: '200', image: 'https://stockx-360.imgix.net/Nike-LeBron-15-Performance-Kith-FF-Black/Images/Nike-LeBron-15-Performance-Kith-FF-Black/Lv2/img36.jpg?auto=format,compress&w=1117&q=90'

  puts "Created #{Sneaker.all.length} sneakers."

  brand1.sneakers << sneaker1
  brand2.sneakers << sneaker2
  brand3.sneakers << sneaker3
  brand4.sneakers << sneaker4
  brand5.sneakers << sneaker5
  brand6.sneakers << sneaker6
  brand1.sneakers << sneaker7

  Rotate.destroy_all

  rotate1 = Rotate.create name: 'All The Things'

  puts "Created #{Rotate.all.length} rotates."

  rotate1.sneakers << sneaker1 << sneaker2 << sneaker3 << sneaker4 << sneaker5 << sneaker6 << sneaker7

  User.destroy_all

  u1 = User.create name: 'Yianni', email: 'yianni.m13@gmail.com', password: 'chicken', image: 'http://fillmurray.com/300/300'
  u2 = User.create name: 'Linna', email: 'linna@ga.co', password: 'chicken', image: 'http://fillmurray.com/300/300'
  u3 = User.create name: 'luke', email: 'luke@ga.co', password: 'chicken', image: 'http://fillmurray.com/300/300'

  puts "Created #{User.all.length} users."

  u1.rotates << rotate1
