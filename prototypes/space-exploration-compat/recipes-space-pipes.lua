

_G["data"]["raw"]["item"]["underground-pipe-segment-space"].ingredients =
    {
      {"underground-pipe-segment-t1", 1},
      {"copper-cable", 2 },
      {"se-heavy-girder", 1},
      {"plastic-bar", 1 },
      {"glass", 1 },
    }


_G["data"]["raw"]["item"]["underground-pipe-segment-space"].ingredients =
    {
      {'pipe-coupler-t1', 1},
      {"copper-cable", 2 },
      {"se-heavy-girder", 1},
      {"plastic-bar", 1 },
    }


data:extend({
  -- UNDERGROUND BUILDINGS
  {
    type = "recipe",
    name = "underground-space-pump",
    ingredients =
    {
      {"engine-unit", 1},
      {"se-heavy-girder", 1},
      {"space-pipe-coupler", 2},
      {"underground-pipe-segment-space", 10},
    },
    enabled = false,
    result = "underground-space-pump"
  },
})
