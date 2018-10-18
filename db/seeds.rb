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
ActsAsVotable::Vote.create!([
  {votable_type: "Rotate", votable_id: 18, voter_type: "User", voter_id: 9, vote_flag: false, vote_scope: nil, vote_weight: 1},
  {votable_type: "Rotate", votable_id: 19, voter_type: "User", voter_id: 9, vote_flag: true, vote_scope: nil, vote_weight: 1},
  {votable_type: "Rotate", votable_id: 22, voter_type: "User", voter_id: 9, vote_flag: false, vote_scope: nil, vote_weight: 1},
  {votable_type: "Rotate", votable_id: 16, voter_type: "User", voter_id: 9, vote_flag: true, vote_scope: nil, vote_weight: 1},
  {votable_type: "Rotate", votable_id: 16, voter_type: "User", voter_id: 7, vote_flag: true, vote_scope: nil, vote_weight: 1},
  {votable_type: "Rotate", votable_id: 22, voter_type: "User", voter_id: 7, vote_flag: false, vote_scope: nil, vote_weight: 1}
])
Rotate::HABTM_Sneakers.create!([
  {rotate_id: 3, sneaker_id: 48},
  {rotate_id: 3, sneaker_id: 49},
  {rotate_id: 3, sneaker_id: 50},
  {rotate_id: 3, sneaker_id: 51},
  {rotate_id: 3, sneaker_id: 52},
  {rotate_id: 3, sneaker_id: 53},
  {rotate_id: 3, sneaker_id: 54},
  {rotate_id: 16, sneaker_id: 64},
  {rotate_id: 16, sneaker_id: 73},
  {rotate_id: 16, sneaker_id: 56},
  {rotate_id: 16, sneaker_id: 50},
  {rotate_id: 16, sneaker_id: 49},
  {rotate_id: 16, sneaker_id: 60},
  {rotate_id: 16, sneaker_id: 66},
  {rotate_id: 18, sneaker_id: 60},
  {rotate_id: 18, sneaker_id: 61},
  {rotate_id: 18, sneaker_id: 62},
  {rotate_id: 18, sneaker_id: 66},
  {rotate_id: 18, sneaker_id: 67},
  {rotate_id: 18, sneaker_id: 70},
  {rotate_id: 18, sneaker_id: 53},
  {rotate_id: 19, sneaker_id: 63},
  {rotate_id: 19, sneaker_id: 56},
  {rotate_id: 19, sneaker_id: 51},
  {rotate_id: 19, sneaker_id: 52},
  {rotate_id: 19, sneaker_id: 50},
  {rotate_id: 19, sneaker_id: 48},
  {rotate_id: 19, sneaker_id: 54},
  {rotate_id: 21, sneaker_id: 64},
  {rotate_id: 21, sneaker_id: 65},
  {rotate_id: 21, sneaker_id: 68},
  {rotate_id: 21, sneaker_id: 69},
  {rotate_id: 21, sneaker_id: 72},
  {rotate_id: 21, sneaker_id: 73},
  {rotate_id: 21, sneaker_id: 62},
  {rotate_id: 22, sneaker_id: 51},
  {rotate_id: 22, sneaker_id: 48},
  {rotate_id: 22, sneaker_id: 54},
  {rotate_id: 22, sneaker_id: 66},
  {rotate_id: 22, sneaker_id: 67},
  {rotate_id: 22, sneaker_id: 70},
  {rotate_id: 22, sneaker_id: 53},
  {rotate_id: 20, sneaker_id: 61},
  {rotate_id: 20, sneaker_id: 62},
  {rotate_id: 20, sneaker_id: 66},
  {rotate_id: 20, sneaker_id: 67},
  {rotate_id: 20, sneaker_id: 70},
  {rotate_id: 20, sneaker_id: 75},
  {rotate_id: 20, sneaker_id: 53}
])
Sneaker::HABTM_Rotates.create!([
  {rotate_id: 3, sneaker_id: 48},
  {rotate_id: 3, sneaker_id: 49},
  {rotate_id: 3, sneaker_id: 50},
  {rotate_id: 3, sneaker_id: 51},
  {rotate_id: 3, sneaker_id: 52},
  {rotate_id: 3, sneaker_id: 53},
  {rotate_id: 3, sneaker_id: 54},
  {rotate_id: 16, sneaker_id: 64},
  {rotate_id: 16, sneaker_id: 73},
  {rotate_id: 16, sneaker_id: 56},
  {rotate_id: 16, sneaker_id: 50},
  {rotate_id: 16, sneaker_id: 49},
  {rotate_id: 16, sneaker_id: 60},
  {rotate_id: 16, sneaker_id: 66},
  {rotate_id: 18, sneaker_id: 60},
  {rotate_id: 18, sneaker_id: 61},
  {rotate_id: 18, sneaker_id: 62},
  {rotate_id: 18, sneaker_id: 66},
  {rotate_id: 18, sneaker_id: 67},
  {rotate_id: 18, sneaker_id: 70},
  {rotate_id: 18, sneaker_id: 53},
  {rotate_id: 19, sneaker_id: 63},
  {rotate_id: 19, sneaker_id: 56},
  {rotate_id: 19, sneaker_id: 51},
  {rotate_id: 19, sneaker_id: 52},
  {rotate_id: 19, sneaker_id: 50},
  {rotate_id: 19, sneaker_id: 48},
  {rotate_id: 19, sneaker_id: 54},
  {rotate_id: 21, sneaker_id: 64},
  {rotate_id: 21, sneaker_id: 65},
  {rotate_id: 21, sneaker_id: 68},
  {rotate_id: 21, sneaker_id: 69},
  {rotate_id: 21, sneaker_id: 72},
  {rotate_id: 21, sneaker_id: 73},
  {rotate_id: 21, sneaker_id: 62},
  {rotate_id: 22, sneaker_id: 51},
  {rotate_id: 22, sneaker_id: 48},
  {rotate_id: 22, sneaker_id: 54},
  {rotate_id: 22, sneaker_id: 66},
  {rotate_id: 22, sneaker_id: 67},
  {rotate_id: 22, sneaker_id: 70},
  {rotate_id: 22, sneaker_id: 53},
  {rotate_id: 20, sneaker_id: 61},
  {rotate_id: 20, sneaker_id: 62},
  {rotate_id: 20, sneaker_id: 66},
  {rotate_id: 20, sneaker_id: 67},
  {rotate_id: 20, sneaker_id: 70},
  {rotate_id: 20, sneaker_id: 75},
  {rotate_id: 20, sneaker_id: 53}
])
Brand.create!([
  {name: "Nike", founded: "1964", ceo: "Mark Parker", hq: "USA", image: "https://vignette.wikia.nocookie.net/camphalfbloodroleplay/images/b/b4/Nike-logo.png/revision/latest?cb=20140703220426"},
  {name: "adidas", founded: "1949", ceo: "Kasper Rørsted", hq: "Germany", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Adidas_Logo.svg/302px-Adidas_Logo.svg.png"},
  {name: "New Balance", founded: "1906", ceo: "Robert DeMartini", hq: "USA", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/New_Balance_logo.svg/300px-New_Balance_logo.svg.png"},
  {name: "Vans", founded: "1966", ceo: "Gary Schoenfeld", hq: "USA", image: "https://upload.wikimedia.org/wikipedia/commons/5/59/Vans_%28brand%29_logo.png"},
  {name: "Converse", founded: "1908", ceo: "Davide Grasso", hq: "USA", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/30/Converse_logo.svg/325px-Converse_logo.svg.png"},
  {name: "Air Jordan", founded: "1983", ceo: "Mark Parker", hq: "USA", image: "https://upload.wikimedia.org/wikipedia/en/thumb/3/37/Jumpman_logo.svg/1200px-Jumpman_logo.svg.png"},
  {name: "Diadora", founded: "1948", ceo: "Marcello Danieli", hq: "Italy", image: "https://upload.wikimedia.org/wikipedia/commons/c/cf/Logo_Diadora_Marca.png"},
  {name: "Balenciaga", founded: "1919", ceo: "Demna Gvasalia", hq: "France", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4b/Balenciaga_Logo.svg/2000px-Balenciaga_Logo.svg.png"},
  {name: "Reebok", founded: "1958", ceo: "Matthew O'Toole", hq: "USA", image: "http://1000logos.net/wp-content/uploads/2017/05/Reebok-logo.png"}
])
Rotate.create!([
  {name: "All The Things", user_id: 7, cached_votes_total: 0, cached_votes_score: 0, cached_votes_up: 0, cached_votes_down: 0, cached_weighted_score: 0, cached_weighted_total: 0, cached_weighted_average: 0.0},
  {name: "Text Chump", user_id: 9, cached_votes_total: 0, cached_votes_score: 0, cached_votes_up: 0, cached_votes_down: 0, cached_weighted_score: 0, cached_weighted_total: 0, cached_weighted_average: 0.0},
  {name: "No Order", user_id: 7, cached_votes_total: 0, cached_votes_score: 0, cached_votes_up: 0, cached_votes_down: 0, cached_weighted_score: 0, cached_weighted_total: 0, cached_weighted_average: 0.0},
  {name: "TA'ing All Day ErryDay", user_id: 8, cached_votes_total: 1, cached_votes_score: -1, cached_votes_up: 0, cached_votes_down: 1, cached_weighted_score: -1, cached_weighted_total: 1, cached_weighted_average: -1.0},
  {name: "Triple Double, No Assistant", user_id: 8, cached_votes_total: 1, cached_votes_score: 1, cached_votes_up: 1, cached_votes_down: 0, cached_weighted_score: 1, cached_weighted_total: 1, cached_weighted_average: 1.0},
  {name: "Much Swag", user_id: 7, cached_votes_total: 2, cached_votes_score: 2, cached_votes_up: 2, cached_votes_down: 0, cached_weighted_score: 2, cached_weighted_total: 2, cached_weighted_average: 1.0},
  {name: "I'm So Smart", user_id: 9, cached_votes_total: 2, cached_votes_score: -2, cached_votes_up: 0, cached_votes_down: 2, cached_weighted_score: -2, cached_weighted_total: 2, cached_weighted_average: -1.0}
])
Sneaker.create!([
  {name: "Air Presto Mid Acronym Racer Pink", silhouette: "Air Presto", colorway: "Racer Pink/Black-Photo Blue-White", released: "September 2018", retail_price: "200", image: "https://stockx-360.imgix.net/Nike-Air-Presto-Mid-Acronym-Racer-Pink/Images/Nike-Air-Presto-Mid-Acronym-Racer-Pink/Lv2/img36.jpg?auto=format,compress&w=1117&q=90", brand_id: 91},
  {name: "React Element 87 Sail Light Bone", silhouette: "React Element 87", colorway: "Sail/Light Bone-White-Rush Orange", released: "August 2018", retail_price: "160", image: "https://stockx.imgix.net/Nike-React-Element-87-Sail-Light-Bone-Product.jpg?fit=fill&bg=FFFFFF&w=300&h=214&auto=format,compress&trim=color&q=90&dpr=2", brand_id: 91},
  {name: "997.5 Ronnie Fieg Mykonos Cyclades", silhouette: "997.5", colorway: "Rust/Parchment", released: "October 2015", retail_price: "240", image: "https://stockx.imgix.net/New-Balance-997pt5-Ronnie-Fieg-Mykonos-Cyclades.png?fit=fill&bg=FFFFFF&w=300&h=214&auto=format,compress&trim=color&q=90&dpr=2", brand_id: 94},
  {name: "Triple S Black White Red", silhouette: "Triple S", colorway: "Black/White-Red", released: "September 2017", retail_price: "820", image: "https://stockx.imgix.net/Balenciaga-Triple-S-Black-White-Red.png?fit=fill&bg=FFFFFF&w=300&h=214&auto=format,compress&trim=color&q=90&dpr=2", brand_id: 97},
  {name: "B. Elite Bait x Astro Boy", silhouette: "B. Elite", colorway: "White/Red", released: "November 2017", retail_price: "120", image: "https://stockx.imgix.net/Diadora-B-Elite-Bait-x-Astro-Boy.png?fit=fill&bg=FFFFFF&w=300&h=214&auto=format,compress&trim=color&q=90&dpr=2", brand_id: 98},
  {name: "Question Mid  SNS Crocus", silhouette: "Question Mid", colorway: "Team Purple/Reebok Gold/White", released: "March 2013", retail_price: "140", image: "https://stockx.imgix.net/Reebok-Question-Mid-SNS-Crocus.jpg?fit=fill&bg=FFFFFF&w=300&h=214&auto=format,compress&trim=color&q=90&dpr=2", brand_id: 99},
  {name: "Instapump Fury Vetements Doodle", silhouette: "Instapump Fury", colorway: "White/Multi-Color", released: "January 2017", retail_price: "760", image: "https://stockx.imgix.net/Reebok-Instapump-Fury-Vetements-Doodle.png?fit=fill&bg=FFFFFF&w=300&h=214&auto=format,compress&trim=color&q=90&dpr=2", brand_id: 99},
  {name: "Speed Trainer Black White", silhouette: "Speed Trainer", colorway: "Black/White", released: "January 2017", retail_price: "760", image: "https://stockx.imgix.net/Balenciaga-Speed-Trainer-Black-White-2018.png?fit=fill&bg=FFFFFF&w=300&h=214&auto=format,compress&trim=color&q=90&dpr=2", brand_id: 97},
  {name: "Old Skool Flame", silhouette: "Old Skool", colorway: "Black/True White", released: "October 2017", retail_price: "60", image: "https://stockx.imgix.net/Vans-Old-Skool-Flame-2017.png?fit=fill&bg=FFFFFF&w=300&h=214&auto=format,compress&trim=color&q=90&dpr=2", brand_id: 95},
  {name: "Kobe 1 Protro Think 16 (Close Out)", silhouette: "Kobe 1", colorway: "White/Del Sol-Varsity Purple", released: "April 2018", retail_price: "175", image: "https://stockx.imgix.net/Nike-Kobe-1-Protro-Think-16-Close-Out-Prouct.jpg?fit=fill&bg=FFFFFF&w=300&h=214&auto=format,compress&trim=color&q=90&dpr=2", brand_id: 91},
  {name: "AJ 1 Retro High Shadow", silhouette: "Jordan 1", colorway: "Black/Medium Grey-White", released: "April 2018", retail_price: "160", image: "https://stockx.imgix.net/Air-Jordan-1-Retro-High-Shadow-2018-1.jpg?fit=fill&bg=FFFFFF&w=300&h=214&auto=format,compress&trim=color&q=90&dpr=2", brand_id: 93},
  {name: "AJ 4 Retro Kaws Black", silhouette: "Jordan 4", colorway: "Black/Black-Clear-Glow", released: "November 2017", retail_price: "350", image: "https://stockx.imgix.net/Air-Jordan-4-Retro-Kaws-Black.png?fit=fill&bg=FFFFFF&w=300&h=214&auto=format,compress&trim=color&q=90&dpr=2", brand_id: 93},
  {name: "AJ 10 Retro Drake OVO Black", silhouette: "10", colorway: "Black/Metallic Gold-Black", released: "February 2016", retail_price: "225", image: "https://stockx.imgix.net/Air-Jordan-10-Retro-Drake-OVO-Black-Product.jpg?fit=fill&bg=FFFFFF&w=300&h=214&auto=format,compress&trim=color&q=90&dpr=2", brand_id: 93},
  {name: "998 Concepts Grand Tourer", silhouette: "998", colorway: "Off White/Sea Green/Bright Red", released: "December 2015", retail_price: "215", image: "https://stockx.imgix.net/New-Balance-998-Concepts-Grand-Tourer.jpg?fit=fill&bg=FFFFFF&w=300&h=214&auto=format,compress&trim=color&q=90&dpr=2", brand_id: 94},
  {name: "Sid Pro Supreme Black", silhouette: "Sid Pro", colorway: "Black/White", released: "October 2018", retail_price: "110", image: "https://stockx.imgix.net/Supreme-Vans-Sid-Pro-Black.jpg?fit=fill&bg=FFFFFF&w=300&h=214&auto=format,compress&trim=color&q=90&dpr=2", brand_id: 95},
  {name: "AJ 1 Retro High Pine Green", silhouette: "1", colorway: "Pine Green/Sail-Black", released: "September 2018", retail_price: "160", image: "https://stockx-360.imgix.net/Air-Jordan-1-Retro-High-Pine-Green/Images/Air-Jordan-1-Retro-High-Pine-Green/Lv2/img36.jpg?auto=format,compress&w=1117&q=90", brand_id: 93},
  {name: "Cortez Basic Slip Kendrick Lamar White", silhouette: "Cortez", colorway: "White/Thunder Blue-Wolf Grey-Turf Orange", released: "October 2018", retail_price: "100", image: "https://stockx.imgix.net/Nike-Cortez-Basic-Slip-Kendrick-Lamar-White.png?fit=fill&bg=FFFFFF&w=300&h=214&auto=format,compress&trim=color&q=90&dpr=2", brand_id: 91},
  {name: "LeBron 15 Performance Kith Closing Ceremony", silhouette: "Lebron 15", colorway: "Black/Black-Multi-Color", released: "August 2018", retail_price: "200", image: "https://stockx.imgix.net/Nike-LeBron-15-Performance-Kith-FF-Black-Product.jpg?fit=fill&bg=FFFFFF&w=300&h=214&auto=format,compress&trim=color&q=90&dpr=2", brand_id: 91},
  {name: "Yeezy Wave Runner 700 Solid Grey", silhouette: "Wave Runner 700", colorway: "Solid Grey/Chalk White/Core Black", released: "November 2017", retail_price: "300", image: "https://stockx.imgix.net/Adidas-Yeezy-Wave-Runner-700-Solid-Grey-Product.jpg?fit=fill&bg=FFFFFF&w=300&h=214&auto=format,compress&trim=color&q=90&dpr=2", brand_id: 92},
  {name: "Futurecraft 4D Daniel Arsham", silhouette: "Futurecraft 4D", colorway: "Aero Green", released: "October 2018", retail_price: "450", image: "https://stockx.imgix.net/adidas-Futurecraft-4D-Daniel-Arsham.png?fit=fill&bg=FFFFFF&w=300&h=214&auto=format,compress&trim=color&q=90&dpr=2", brand_id: 92},
  {name: "EQT Bask Adv Billionaire Boys Club x Neighborhood", silhouette: "EQT", colorway: "Black/White/Black", released: "October 2018", retail_price: "150", image: "https://stockx.imgix.net/adidas-EQT-Bask-Adv-Billionaire-Boys-Club-x-Neighborhood.png?fit=fill&bg=FFFFFF&w=300&h=214&auto=format,compress&trim=color&q=90&dpr=2", brand_id: 92},
  {name: "AJ 8 Retro South Beach", silhouette: "8", colorway: "White/White-Turbo Green-Neutral Grey", released: "October 2018", retail_price: "190", image: "https://stockx.imgix.net/Air-Jordan-8-Retro-South-Beach.png?fit=fill&bg=FFFFFF&w=300&h=214&auto=format,compress&trim=color&q=90&dpr=2", brand_id: 93},
  {name: "Chuck Taylor All-Star 70s Ox Comme des Garcons PLAY White", silhouette: "Chuck Taylor", colorway: "Milk/White-High Risk Red", released: "May 2016", retail_price: "120", image: "https://stockx.imgix.net/Converse-Chuck-Taylor-All-Star-70s-Ox-Comme-des-Garcons-PLAY-White.png?fit=fill&bg=FFFFFF&w=300&h=214&auto=format,compress&trim=color&q=90&dpr=2", brand_id: 96},
  {name: "SB Gato Supreme White", silhouette: "SB Gato", colorway: "White/White-Gym Red", released: "August 2018", retail_price: "110", image: "https://stockx.imgix.net/Nike-SB-Gato-Supreme-White-Product.jpg?fit=fill&bg=FFFFFF&w=300&h=214&auto=format,compress&trim=color&q=90&dpr=2", brand_id: 91},
  {name: "Yeezy Boost 350 V2 Semi Frozen Yellow", silhouette: "Yeezy Boost 350 V2", colorway: "Sem Frozen Yellow/Raw Steel/Red", released: "November 2017", retail_price: "220", image: "https://stockx.imgix.net/Adidas-Yeezy-Boost-350-V2-Semi-Frozen-Yellow-Product.jpg?fit=fill&bg=FFFFFF&w=300&h=214&auto=format,compress&trim=color&q=90&dpr=2", brand_id: 92},
  {name: "N9000 Bait Transformers Megatron", silhouette: "N9000", colorway: "Charcoal/Grey-Purple", released: "September 2017", retail_price: "230", image: "https://stockx.imgix.net/Diadora-N9000-Bait-Transformers-Megatron.png?fit=fill&bg=FFFFFF&w=300&h=214&auto=format,compress&trim=color&q=90&dpr=2", brand_id: 98},
  {name: "Human Race NMD Pharrell Multi-Color", silhouette: "NMD", colorway: " Noble Ink/Bold Yellow/Footwear White", released: "November 2017", retail_price: "240", image: "https://stockx.imgix.net/Adidas-Human-Race-NMD-Pharrell-Multi-Color-Product.jpg?fit=fill&bg=FFFFFF&w=300&h=214&auto=format,compress&trim=color&q=90&dpr=2", brand_id: 92},
  {name: "Chuck Taylor All-Star 70s Hi Off-White", silhouette: "Chuck Taylor", colorway: "White/Bold Orange-Black", released: "October 2018", retail_price: "130", image: "https://stockx.imgix.net/Converse-Chuck-Taylor-All-Star-70s-Hi-Off-White-Product.jpg?fit=fill&bg=FFFFFF&w=1400&h=1000&auto=format,compress&trim=color&q=90", brand_id: 96}
])
User.create!([
  {name: "Marissa", email: "marissa@gmail.com", password_digest: "$2a$10$.ZNrpgDm6Ojroc7ZySFgeecj4Epz8/IYNJC2UTzk2ozkHGneqgbJS", image: nil},
  {name: "Linna", email: "linna@ga.co", password_digest: "$2a$10$JvDB3fWzVHnoxqdcqIS7NORGBu5ezOb4NYpcmkT0iXWhTAtW0DNou", image: "http://placecage.com/gif/100/100"},
  {name: "Yianni", email: "yianni.m13@gmail.com", password_digest: "$2a$10$pQaGjND44wHCD2cwzcuyluDMLzSkKMkMy6p6MwgRi.dK73DcQ7Tdq", image: "http://placecage.com/gif/300/300"},
  {name: "Luke", email: "luke@ga.co", password_digest: "$2a$10$YxfmixEtrt333ouxb.P0FOzi9roxAQoheuH87.5QeCqlbiuswRCx.", image: "http://placecage.com/gif/200/200"}
])
