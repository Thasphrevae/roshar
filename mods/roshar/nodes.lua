
minetest.register_node("roshar:stone_with_grass", {
	description = "Stone with Grass",
	tiles = {"roshar_test_grass.png"},
	is_ground_content = true,
	groups = {crumbly=2},
	
	local above_objects = minetest.get_objects_inside_radius({x = pos.x + 3, y = pos.y + 1, z = pos.z + 3}, 0.5)

	if (minetest.registered_nodes[above_node.roshar:grass].buildable_to and #above_objects == 0)
		tiles = {"roshar_test_stone.png"},
	end
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
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.4},
	}),
})

minetest.register_node(roshar:crem_block", {
	description = ("Crem Block"),
	tiles = {"crem_block.png"},
	is_ground_content = true,
	groups = {crumbly=1},
	drop = "roshar:crem",
})

minetest.register_node(roshar:hardened_crem", {
	description = ("Hardened Crem Block"),
	tiles = {"hardened_crem.png"},
	is_ground_content = true,
	groups = {cracky=3, stone=2},
})
