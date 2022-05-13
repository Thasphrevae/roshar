
minetest.register_node("roshar:crem_with_grass", {
	description = "Crem with Grass",
	tiles = {"roshar_test_grass.png"},
	is_ground_content = true,
	groups = {crumbly=2},
})

minetest.register_node("roshar:stone", {
	description = "Roshar Stone",
	tiles = {"roshar_test_stone.png"},
	is_ground_content = true,
	groups = {cracky=2, stone=1},
    drop = "roshar:stone"
})

minetest.register_node("roshar:sand", {
	description = "Roshar Stone",
	tiles = {"roshar_test_sand.png"},
	is_ground_content = true,
	groups = {crumbly=2},
})

minetest.register_node("roshar:air", {
    description = "Roshar Air (how are you seeing this?!)",
    drawtype = "airlike",
    paramtype = "light",
    sunlight_propagates = true,
    walkable     = false, -- Would make the player collide with the air node
    pointable    = false, -- You can't select the node
    diggable     = false, -- You can't dig the node
    buildable_to = true,  -- Nodes can replace this node.
                          -- (you can place a node and remove the air node
                          -- that used to be there)
    air_equivalent = true,
    drop = "",
    groups = {not_in_creative_inventory=1}
})

minetest.register_node("roshar:shinovar_dirt_with_grass", {
	description = ("Dirt with Shin Grass"),
	tiles = {"shin_grass.png",
		"shinovar_dirt.png",
		{name = "shinovar_dirt.png^shin_grass_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = "roshar:shinovar_dirt",
})

minetest.register_node("roshar:shinovar_dirt", {
	description = ("Shinovar Dirt"),
	tiles = {"shinovar_dirt.png"},
	is_ground_content = true,
	groups = {crumbly=1},
})

minetest.register_node("roshar:crem_block", {
	description = ("Crem Block"),
	tiles = {"crem_block.png"},
	is_ground_content = true,
	groups = {crumbly=1},
	drop = "roshar:crem",
})

minetest.register_node("roshar:hardened_crem", {
	description = ("Hardened Crem Block"),
	tiles = {"hardened_crem.png"},
	is_ground_content = true,
	groups = {cracky=3, stone=2},
})

minetest.register_node("roshar:rockbud", {
	description = ("Rockbud"),
	mesh = "rockbud.obj",
	tiles = {"crem_block.png"},
	drawtype = "mesh",
	groups = {cracky = 1},
	use_texture_alpha = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.35, 0.3}
	},
})

---Liquids, copied from default minetest
minetest.register_node("roshar:water_source", {
	description = ("Water Source"),
	drawtype = "liquid",
	waving = 3,
	tiles = {
		{
			name = "default_water_source_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
		{
			name = "default_water_source_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "roshar:water_flowing",
	liquid_alternative_source = "roshar:water_source",
	liquid_viscosity = 1,
	post_effect_color = {a = 103, r = 30, g = 60, b = 90},
	groups = {water = 3, liquid = 3, cools_lava = 1},
})

minetest.register_node("roshar:water_flowing", {
	description = ("Flowing Water"),
	drawtype = "flowingliquid",
	waving = 3,
	tiles = {"default_water.png"},
	special_tiles = {
		{
			name = "default_water_flowing_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.5,
			},
		},
		{
			name = "default_water_flowing_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.5,
			},
		},
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "roshar:water_flowing",
	liquid_alternative_source = "roshar:water_source",
	liquid_viscosity = 1,
	post_effect_color = {a = 103, r = 30, g = 60, b = 90},
	groups = {water = 3, liquid = 3, not_in_creative_inventory = 1,
		cools_lava = 1},
})