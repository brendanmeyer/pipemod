data:extend({
  -- UNDERGROUND BUILDINGS
  {
    type = "recipe",
    name = "underground-mini-pump",
    ingredients =
    {
      {"engine-unit", 1},
      {"steel-plate", 1},
      {"small-pipe-coupler", 2},
      {"underground-pipe-segment-t1", 10},
    },
    enabled = false,
    result = "underground-mini-pump"
  },
  -- MULTI PIPES
  {
    type = "recipe",
    name = "4-to-4-pipe",
    ingredients =
    {
      {"pipe", 1},
      {"small-pipe-coupler", 4},
      {"underground-pipe-segment-t1", 20},
    },
	enabled = false,
    result = "4-to-4-pipe"
  },
})
