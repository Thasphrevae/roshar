
-- biomes

minetest.set_mapgen_setting("mg_flags", "caves, nodungeons, light, decorations, biomes", true)

minetest.clear_registered_biomes()
minetest.clear_registered_decorations()

minetest.register_alias("mapgen_stone", "roshar:stone")
minetest.register_alias("mapgen_water_source", "roshar:water_source")
minetest.register_alias("mapgen_river_water_source", "roshar:water_source")

minetest.register_alias("mapgen_apple","roshar:stone")
minetest.register_alias("mapgen_dirt","roshar:grass")
minetest.register_alias("mapgen_dirt_with_grass","roshar:grass")
minetest.register_alias("mapgen_cobble","roshar:stone")
minetest.register_alias("mapgen_gravel","roshar:grass")
minetest.register_alias("mapgen_junglegrass","roshar:grass")
minetest.register_alias("mapgen_lava_source","roshar:air")
minetest.register_alias("mapgen_leaves","roshar:grass")
minetest.register_alias("mapgen_mossycobble","roshar:stone")
minetest.register_alias("mapgen_sand","roshar:sand")
minetest.register_alias("mapgen_stair_cobble","roshar:stone")
minetest.register_alias("mapgen_tree","roshar:grass")




minetest.register_biome({
    name = "crem_plain",
    node_top = "roshar:crem_block",
    depth_top = 1,
    -- Node forming surface layer of biome and thickness of this layer
    node_filler = "roshar:hardened_crem",
    depth_filler = 3,
    -- Node forming lower layer of biome and thickness of this layer
    node_stone = "roshar:stone",
    -- Node that replaces all stone nodes between roughly y_min and y_max.
    node_water = "roshar:water_source",
    node_river_water = "roshar:water_source",
    node_riverbed = "roshar:sand",
    depth_riverbed = 2,
    -- Node placed under river water and thickness of this layer
    node_cave_liquid = "roshar:water_source",
    node_cave_liquid = {"roshar:water_source",},
    -- Nodes placed inside 50% of the medium size caves.
    -- Multiple nodes can be specified, each cave will use a randomly
    -- chosen node from the list.
    -- If this field is left out or 'nil', cave liquids fall back to
    -- classic behaviour of lava and water distributed using 3D noise.
    -- For no cave liquid, specify "air".
    y_max = 31000,
    y_min = 30,
    vertical_blend = 8,
    -- Vertical distance in nodes above 'y_max' over which the biome will
    -- blend with the biome above.
    -- Set to 0 for no vertical blend. Defaults to 0.
    heat_point = 60,
    humidity_point = 20,
    -- Characteristic temperature and humidity for the biome.
    -- These values create 'biome points' on a voronoi diagram with heat and
    -- humidity as axes. The resulting voronoi cells determine the
    -- distribution of the biomes.
    -- Heat and humidity have average values of 50, vary mostly between
    -- 0 and 100 but can exceed these values.
})

-- minetest.register_ore({
--     ore_type = "puff",
--     ore = "roshar:stone_with_iron",
--     ore_param2 = 3,
--     -- Facedir rotation. Default is 0 (unchanged rotation)
--     wherein = "roshar:stone",
--     -- A list of nodenames is supported too
--     clust_scarcity = 1,
--     -- Ore has a 1 out of clust_scarcity chance of spawning in a node.
--     -- If the desired average distance between ores is 'd', set this to
--     -- d * d * d.
--     clust_num_ores = 12,
--     -- Number of ores in a cluster
--     clust_size = 10,
--     -- Size of the bounding box of the cluster.
--     -- In this example, there is a 3 * 3 * 3 cluster where 8 out of the 27
--     -- nodes are coal ore.
--     y_min = -31000,
--     y_max = 64,
--     -- Lower and upper limits for ore
--     flags = "",
--     -- Attributes for the ore generation, see 'Ore attributes' section above
--     noise_threshold = 0.5,
--     -- If noise is above this threshold, ore is placed. Not needed for a
--     -- uniform distribution.
--     noise_params = {
--         offset = 0,
--         scale = 1,
--         spread = {x = 100, y = 100, z = 100},
--         seed = 23,
--         octaves = 3,
--         persist = 0.7
--     },
--     -- NoiseParams structure describing one of the perlin noises used for
--     -- ore distribution.
--     -- Needed by "sheet", "puff", "blob" and "vein" ores.
--     -- Omit from "scatter" ore for a uniform ore distribution.
--     -- Omit from "stratum" ore for a simple horizontal strata from y_min to
--     -- y_max.
--     biomes = {"mars_surface_stone"},
--     -- List of biomes in which this ore occurs.
--     -- Occurs in all biomes if this is omitted, and ignored if the Mapgen
--     -- being used does not support biomes.
--     -- Can be a list of (or a single) biome names, IDs, or definitions.
--     -- Type-specific parameters
--     -- sheet
--     column_height_min = 1,
--     column_height_max = 16,
--     column_midpoint_factor = 0.5,

--     -- puff
--     np_puff_top = {
--         offset = 4,
--         scale = 2,
--         spread = {x = 100, y = 100, z = 100},
--         seed = 47,
--         octaves = 3,
--         persist = 0.7
--     },
--     np_puff_bottom = {
--         offset = 4,
--         scale = 2,
--         spread = {x = 100, y = 100, z = 100},
--         seed = 11,
--         octaves = 3,
--         persist = 0.7
--     },

-- })

minetest.register_biome({
	name = "grassy_crem_plain",
	node_top = "roshar:crem_with_grass",
	depth_top = 1,
	node_filler = "roshar:crem_block",
	depth_filler = 2,
	node_stone = "roshar:stone",
	node_riverbed = "roshar:crem_block",
	depth_riverbed = 2,
	y_max = 50,
	y_min = -20,
	heat_point = 55,
	humidity_point = 35,
})


minetest.register_biome({
	name = "shinovar",
	node_top = "roshar:shinovar_dirt_with_grass",
	depth_top = 1,
	node_filler = "roshar:shinovar_dirt",
	depth_filler = 4,
	node_stone = "roshar:stone",
	node_riverbed = "roshar:sand",
	depth_riverbed = 2,
	y_max = 31000,
	y_min = 100,
	heat_point = 40,
	humidity_point = 35,
})

-- Decorations
minetest.register_decoration({
    deco_type = "simple",
    place_on = {"roshar:crem_with_grass", "roshar:crem_block"},
    sidelen = 16,
    fill_ratio = 0.1,
    biomes = {"grassy_crem_plain", "crem_plain"},
    y_max = 200,
    y_min = 1,
    decoration = "roshar:rockbud",
})