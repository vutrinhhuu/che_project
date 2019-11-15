# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
User.create!([
	{id: 1, role: 1,
		name: "Do Thi Hai",
		email: "dothihai@gmail.com",
		password: "123456", password_confirmation: "123456",
		nickname: "dothihai",
		gender: "female",
		remote_img_url: "http://file.vforum.vn/hinh/2018/02/hinh-cho-cuoi-deu-cho-de-thuong-12.jpg",
		birthday:"1997-10-10"},

	{id: 2, role: 0,
		name: "Trinh Huu Vu",
		email: "trinhhuuvu@gmail.com",
		password: "123456", password_confirmation: "123456",
		nickname: "trinhhuuvu",
		gender: "male",
		remote_img_url: "http://file.vforum.vn/hinh/2018/02/hinh-cho-cuoi-deu-cho-de-thuong-12.jpg",
		birthday: "1997-12-12"},

	{id: 3, role: 0,
		name: "Nguyen Thi Kieu Thuong",
		email: "nguyenthikieuthuong@gmail.com",
		password: "123456", password_confirmation: "123456",
		nickname: "kieuthuong",
		gender: "female",
		remote_img_url: "https://yolo.vn/wp-content/uploads/2019/08/hinh-anh-cho-pomsky-dep-45.jpg",
		birthday: "1997-03-03"},

	{id: 4, role: 0,
		name: "Nguyen Ngoc Trung",
		email: "nguyenngoctrung@gmail.com",
		password: "123456", password_confirmation: "123456",
		nickname: "nguyenngoctrung",
		gender: "male",
		remote_img_url: "http://cdn.hoahoctro.vn/uploads/2018/10/5bc41f947aa93-1.jpg",
		birthday: "1997-06-06"},

	{id: 5, role: 0,
		name: "Duong Ngoc Son",
		email: "duongngocson@gmail.com",
		password: "123456", password_confirmation: "123456",
		nickname: "duongngocson",
		gender: "male",
		remote_img_url: "https://petto.vn/wp-content/uploads/2019/03/InstaSave3.jpg",
		birthday: "1997-11-11"},
])

Category.delete_all
Category.create! id: 1, name: "Smart office chair"
Category.create! id: 2, name: "Wheelchair"

Chair.delete_all
Chair.create!([
	{id: 1,
		name:"Meeting chair SL606",
		category_id: 1,
		function: "Office chair",
		img:"https://hoaphat.net.vn/wp-content/uploads/ghe-lung-trung-sl606.jpg",
		description:"SL606 meeting chair is a kind of middle back meeting chair, PVC foam cushion, industrial leather or genuine leather. Plastic legs and arms.",
		price: 963.900,
		quantity: 10
	},
	{id: 2,
		name:"Mesh chair GL401",
		category_id: 1,
		function: "Office chair",
		img:"https://hoaphat.net.vn/wp-content/uploads/GL401.jpg",
		description:"Kneeling chair with Ni-Cr plated Oval tube, backrest using mesh-covered steel frame reduces heat accumulation but still keeps firm, soft.
Sponge pads covered with porous mesh fabric, armrest, leather seats.",
		price: 1288.350,
		quantity: 20
	},
	{id: 3,
		name:"Mesh chair GL403",
		category_id: 1,
		function: "Office chair",
		img:"https://hoaphat.net.vn/wp-content/uploads/GL403.jpg",
		description:"Kneeling chair with Ni-Cr plated steel pipe, backrest and seat cushion using Ni-Cr plated steel frame combined with special mesh fabric has high strength to reduce heat accumulation.

The armrests use shiny Ni-Cr plated steel create elegance.",
		price: 1265.250,
		quantity: 30},
	{id: 4,
		name:"Mesh chair GL407",
		category_id: 1,
		function: "Office chair",
		img:"https://hoaphat.net.vn/wp-content/uploads/gl407.jpg",
		description:"Meeting chair with Ni-Cr plated steel frame, kneeling style, plastic-covered frame with mesh fabric.

The chair is designed with arched back hugging to create a comfortable feeling when sitting.

Mesh seat cushion is porous.",
		price: 786.251,
		quantity: 10
	},
	{id: 5,
		name:"Meeting chair GL406",
		category_id: 1,
		function: "Office chair",
		img:"https://hoaphat.net.vn/wp-content/uploads/gl406.jpg",
		description:"Kneeling chair with Ni-Cr-plated round steel tube, backrest and seat cushion use Ni-Cr plated steel frame combined with special industrial-strength leather upholstery feels comfortable to use.",
		price: 1155.000,
		quantity: 10
	},
	{id: 6,
		name:"Mesh chair GL412M",
		category_id: 1,
		function: "Office chair",
		img:"https://hoaphat.net.vn/wp-content/uploads/ghe-luoi-gl412m.jpg",
		description:"Steel frame mesh seats, plastic chair seats made of mesh fabric create a cool feeling when used. Chair using plastic hands, foam cushions are covered with foam outside.
With outstanding advantages: the chair is very smooth and airy, creating a pleasant feeling for users. The chair is suitable for use by office workers or for families.",
		price: 989.573,
		quantity: 10
	},
	{id: 7,
		name:"Cafe chair G31",
		category_id: 1,
		function: "Cafe chair",
		img:"https://hoaphat.net.vn/wp-content/uploads/ghe-cafe-G31-1.jpg",
		description:"Cafe chair G31 static plastic chair, legs using steel pipe Ø19.
The product can be used in sync with a coffee table to create a complete cafe tables and chairs.",
		price: 567.788,
		quantity: 10
	},
	{id: 8,
		name:"cafe chair G32",
		category_id: 1,
		function: "Cafe chair",
		img:"https://hoaphat.net.vn/wp-content/uploads/ghe-g32.jpg",
		description:"G32 cafe chair with static plastic legs and legs using Ø19 steel pipe.
The product can be used in sync with a coffee table to create a complete cafe tables and chairs.",
		price: 681.345,
		quantity: 10
	},
	{id: 9,
		name:"Leather chair SG1020",
		category_id: 1,
		function: "Manager chair",
		img:"https://hoaphat.net.vn/wp-content/uploads/ghe-xoay-van-phong-hoa-phat-sg1020.jpg",
		description:"High-quality swivel chair-type design, industrial leather-like memory foam cushions.
Plastic feet with wheels, plastic hands, bowls with the function of adjusting the height of the chair and slightly reclining chair.",
		price: 1647.125,
		quantity: 10
	},
	{id: 10,
		name:"Leather chair SG920",
		category_id: 1,
		function: "Manager chair",
		img:"https://hoaphat.net.vn/wp-content/uploads/SG920.jpg",
		description:"Leather chairs SG920 used with office space
The chair has a reclining mechanism and a leg resting mechanism relaxes",
		price: 2919.000,
		quantity: 10
	},
	{id: 11,
		name:"Bar chair SB01",
		category_id: 1,
		function: "Bar chair",
		img:"https://hoaphat.net.vn/wp-content/uploads/SB01.jpg",
		description:"SB01 bar chairs product with solid structure, modern design.
Galvanized bar seats, PVC-covered foam cushions, height-adjustable seats with leg room",

		price: 753.900,
		quantity: 10
	},
	{id: 12,
		name:"Bar chair SB03",
		category_id: 1,
		function: "Bar chair",
		img:"https://hoaphat.net.vn/wp-content/uploads/SB03.jpg",
		description:"Chair with 2 floors, black powder coated steel frame, need to change slightly low height, PVC foam cushion.",
		price: 459.908,
		quantity: 10
	},
	{id: 13,
		name:"Office sleeping chair GNB",
		category_id: 1,
		function: "Office sleeping chair",
		img:"https://hoaphat.net.vn/wp-content/uploads/GNB3.jpg",
		description:"Xuan Phat office sleeping chair is designed for pregnant women when they want to take a nap at the office.
The oval cushion surface helps pregnant women lie comfortably. Length adjustable foot mats.",
		price: 643.493,
		quantity: 10
	},
	{id: 14,
		name:"Office sleeping chair GN02",
		category_id: 1,
		function: "Office sleeping chair",
		img:"https://hoaphat.net.vn/wp-content/uploads/GN02.jpg",
		description:"Xuan Phat office sleeping chair is designed for pregnant women when they want to take a nap at the office.
The oval cushion surface helps pregnant women lie comfortably. Length adjustable foot mats.",
		price: 643.493,
		quantity: 10
	},
	{id: 15,
		name:"Office sleeping chair GNS2",
		category_id: 1,
		function: "Office sleeping chair",
		img:"https://hoaphat.net.vn/wp-content/uploads/GNS2-Den1-510x510.jpg",
		description:"Xuan Phat office sleeping chair is designed for pregnant women when they want to take a nap at the office.
The oval cushion surface helps pregnant women lie comfortably. Length adjustable foot mats.",
		price: 1268.600,
		quantity: 10
	},
	{id: 16,
		name:"Folding chair C135A",
		category_id: 1,
		function: "office chair",
		img:"https://hoaphat.net.vn/wp-content/uploads/C135A.jpg",
		description:"C135A folding chair is a folding chair with cushion shaped like plastic spokes, oval steel frame 10 x 20mm.
Brackets Ø19.1mm steel, painted silver.",
		price: 210.000,
		quantity: 10
	},
	{id: 17,
		name:"Folding chair G03A",
		category_id: 1,
		function: "office chair",
		img:"https://hoaphat.net.vn/wp-content/uploads/G03A.jpg",
		description:"Folding chair G03A has been replaced with product code Folding chair G03
G03A folding chairs are folding chairs, Ø22 steel pipe frames, PVC-covered foam pads and felts commonly used in the dining room or lounge.",
		price: 399.722,
		quantity: 10},
	{id: 18,
		name:"Meeting chair SL711",
		category_id: 1,
		function: "office chair",
		img:"https://hoaphat.net.vn/wp-content/uploads/ghe-phong-hop-SL711.jpg",
		description:"Chair legs are kneeling with black powder coated steel pipes, the seats are made of cheese, the foam padding is covered with felt cloth, plastic hands.",
		price: 860.874,
		quantity: 10
	},
	{id: 19,
		name:"Meeting chair SL718",
		category_id: 1,
		function: "office chair",
		img:"https://hoaphat.net.vn/wp-content/uploads/HS712HS.jpg",
		description:"Chair legs are kneeling with black powder coated steel pipes, the seats are made of cheese, the foam padding is covered with felt cloth, plastic hands.",
		price: 708.383,
		quantity: 10
	},
	{id:20,
		name:"Meeting chair SL719",
		category_id: 1,
		function: "office chair",
		img:"https://hoaphat.net.vn/wp-content/uploads/ghe-phong-hop-SL719.jpg",
		description:"Chair legs are kneeling with black powder coated steel pipes, the seats are made of cheese, the foam padding is covered with felt cloth, plastic hands.",
		price: 884.667,
		quantity: 10
	},
	{id: 21,
		name:"Medline Lightweight Transport Wheelchair with Handbrakes",
		category_id: 2,
		function: "Wheelchair",
		img:"https://images-na.ssl-images-amazon.com/images/I/812DUc9PrCL._AC_SL1500_.jpg",
		description:"Medline transport lightweight wheelchair has large 12 inch rear wheels for better performance on uneven outdoor surfaces | Loop-style manual handbrakes are ideal for locking the rear wheels during transfers
Transport chair with powder coated aluminum ultralight frame is durable and has a weight capacity of 300 lbs",
		price: 174.96,
		quantity: 10
	},
	{id: 22,
		name:"Medline Transport Wheelchair with Lightweight Steel Frame",
		category_id: 2,
		function: "Wheelchair",
		img:"https://images-na.ssl-images-amazon.com/images/I/81eQI5aNIBL._AC_SL1500_.jpg",
		description:"Medline lightweight transport chair features swing-away footrests and locking brakes to make transfers easy, large 12 inch wheels, and special armrests that allow you to sit close to most desks or tables
Antimicrobial Product Protection - Nylon upholstery features Microban antimicrobial technology for built-in protection that inhibits the growth of stains and odors from bacteria, mold & mildew",
		price: 149.96,
		quantity: 10
	},
	{id: 23,
		name:"Medline Premium Ultra-Lightweight Wheelchair with Flip-Back Desk ",
		category_id: 2,
		function: "Wheelchair",
		img:"https://images-na.ssl-images-amazon.com/images/I/81qB5XKlKiL._AC_SL1500_.jpg",
		description:"Flip-back, desk-length arms make it easy to navigate under tables | elevating leg rests enhance comfort and remove easily
Breathable nylon upholstery is soft and comfortable
Premium welds ensure reliability and durability",
		price: 200.58,
		quantity: 10
	},
	{id: 24,
		name:"2019 Folding Electric Powered Wheelchair Lightweight ",
		category_id: 2,
		function: "Wheelchair",
		img:"https://images-na.ssl-images-amazon.com/images/I/61z2eXk3VkL._AC_SL1400_.jpg",
		description:"ULTRA LIGHT WEIGHT - WISGING D09 Electric Wheelchair is just 58 lbs with battery! The versatile wheelchair is assembled with Aluminum Alloy Foldable chair, 6AH Lithium battery*2, antiseptic, breathable seat and back cushions.
FOLDING COMPACT DESIGN - WISGING D09 Electric Wheelchair easy to fold design reduces The Travel Buggy in seconds to a compact unit about the size of a suitcase for storage or travel. Includes a black travel bag, making transporting even easier and convenient.",
		price: 300.58,
		quantity: 10
	},
	{id: 25,
		name:"ComfyGO Best Rated Exclusive Deluxe Electric Wheelchair",
		category_id: 2,
		function: "Wheelchair",
		img:"https://images-na.ssl-images-amazon.com/images/I/613yLwOPejL._AC_SL1026_.jpg",
		description:"✔ As a US Company We are Giving Gold Standard 24x7 Customer Support for All of Our Customers. Now with an Unbeatable Price. Warranty: 3 year for Frame, 1 Year for Motor and Joystick Controller, 6 Months for Battery
✔ TRAVEL EASILY - Convenient for storage and transport for folding feature and light-weight design for easy carrying. Now with the Bluetooth Remote Controller You can Control Your Wheelchair from a Distance. Joystick can be placed either left or right ride of the armrest",
		price: 400.28,
		quantity: 10},
	{id: 26,
		name:"Karman Healthcare S-Ergo 115 Limited Edition, Alpine White",
		category_id: 2,
		function: "Wheelchair",
		img:"https://images-na.ssl-images-amazon.com/images/I/71DrT8KxaVL._AC_SL1224_.jpg",
		description:"Weighs only 25 pounds (without footrest) and the maximum weight capacity is 250 pounds
Limited Edition Alpine White Frame
Breathable Mesh Upholstery and Back Pouch Standard
Removable Anti Bacterial Seat And Back Cushions",
		price: 629.00,
		quantity: 10
	},
	{id: 27,
		name:"2019 UPGRADED Folding Electric Powered Wheelchair",
		category_id: 2,
		function: "Wheelchair",
		img:"https://images-na.ssl-images-amazon.com/images/I/81sAyP1de0L._AC_SL1500_.jpg",
		description:"THE SAFEST AND MOST RELIABLE electric wheelchair available in the market today. The INNUOVO Power Wheelchair is FDA approved and can be used for air travel.
LIGHTWEIGHT AND PORTABLE device that folds to easily fit in the trunk of your car. The entire device, including batteries, weighs 50 lb.
EASY TO OPERATE with a simple joystick design. It can be operated with one hand.",
		price: 500.80,
		quantity: 0
	}
])

OrderStatus.delete_all
OrderStatus.create! id: 1, name: "In Progress"
OrderStatus.create! id: 2, name: "Placed"
OrderStatus.create! id: 3, name: "Shipped"
OrderStatus.create! id: 4, name: "Cancelled"
