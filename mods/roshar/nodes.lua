
minetest.register_node("roshar:grass", {
	description = "Roshar Grass",
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