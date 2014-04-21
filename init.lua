minetest.register_craftitem("swed:cigar", {
    description = "Empty Cigar",
    inventory_image = "swed_cigar.png"
})

minetest.register_craftitem("swed:cigarfull", {
	description = "Unlighted Cigar",
	inventory_image = "swed_cigar.png",
})

minetest.register_craftitem("swed:cigarlighter", {
	description = "Cigar Lighter",
	inventory_image = "swed_lighter.png",
})

minetest.register_craftitem("swed:cigarlighted", {
	description = "Cigar",
	inventory_image = "swed_cigar.png",
	on_use = minetest.item_eat(18)
})

minetest.register_craft({
	output = "swed:cigarfull",
	recipe = {
		{"group:stick", "farming:wheat", "group:stick"},
		{"group:stick", "farming:wheat", "group:stick"},
		{"group:stick", "default:coal_lump", "group:stick"},
	}
})

minetest.register_craft({
	output = "swed:cigarlighter",
	recipe = {
		{"default:steel_ingot", "default:coal_lump"},
		{"default:mese_crystal", "default:steel_ingot"},
	}
})

minetest.register_craft({
	output = "swed:cigarfull",
	recipe = {
		{"farming:wheat", "farming:wheat", "swed:cigar"},
	}
})

minetest.register_craft({
    type = "shapeless"
	output = "swed:cigarlighted",
	recipe = {
		{"swed:cigarfull", "swed:cigarlighter"},
	}
})

minetest.register_craft({
	output = "swed:cigar",
	recipe = {
		{"group:stick", "", "group:stick"},
		{"group:stick", "", "group:stick"},
		{"group:stick", "default:coal_lump", "group:stick"},
	}
})
