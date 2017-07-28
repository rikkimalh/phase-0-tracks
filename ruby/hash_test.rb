interior_design = {
	name: "Rikki Malhotra",
	address: "1 Broadway",
	email: "rikki.malh@gmail.com",
	phone: "203-914-4158",
	fave_shade_of_blue: "torquoise",
	wallpaper_preference: "Paisley",
	ombre: "fierce"
}

p interior_design
interior_design[:address] = "west belle plaine ave"
p interior_design[:address]
interior_design[:hired] = "yes"
p interior_design[:hired]
p interior_design["Rikki Malhotra"]

puts interior_design[:name] + interior_design[:address]