local Color = require('__stdlib__/stdlib/utils/color')

afh_space_only =
{
  "water-tile",
  "ground-tile",
  --"item-layer",
  --"object-layer",
  --"player-layer"
}

afh_ground_only =
{
  "water-tile",
  --"item-layer",
  --"object-layer",
  --"player-layer",
  "layer-14"
}


levelsTable = {
  [1] = Color.from_rgb(255,191,0,255/2),
  [2] = Color.from_rgb(227,38,45,255/2),
  [3] = Color.from_rgb(38,173,227,255/2),
  --[4] = Color.from_rgb(75,0,130,255),
  --[5] = Color.from_rgb(5,73,53,255)
}

-- if mods["space-exploration"] then
  levelsTable["space"] = Color.from_rgb(255,255,255,255/2)
-- end
levelsTable = {
  ["t1"] = {1, Color.from_rgb(255,191,0,255/2)},
  ["t2"] = {2, Color.from_rgb(227,38,45,255/2)},
  ["t3"] = {3, Color.from_rgb(38,173,227,255/2)},
  --["t4"] = {4, Color.from_rgb(75,0,130,255)},
  --["t5"] = {5, Color.from_rgb(5,73,53,255)},
}

levelsTable["space"] = {4, Color.from_rgb(255,255,255,255/2)}
if mods["space-exploration"] then
  levelsTable["space"] = {4, Color.from_rgb(255,255,255,255/2)}
end

require("prototypes.entities.pipecovers")
require("prototypes.entities.underground-pipes")
require("prototypes.entities.underground-buildings")
require("prototypes.entities.pipes-to-ground")
require("prototypes.entities.pipes")
require("prototypes.entities.valves")
require("prototypes.groups")
require("prototypes.items.items-valves")
require("prototypes.items.items")
require("prototypes.recipes.recipes")
require("prototypes.recipes.recipes-pipes")
require("prototypes.recipes.recipes-valves")
require("prototypes.technology")
require("prototypes.controls")
if _G.mods["space-exploration"] then

  -- RECIPES
  pipe_recipe("t1", "pipe")
  pipe_recipe("t2", "pipe", "t1")
  pipe_recipe("t3", "pipe", "t2")
  
  pipe_recipe("space", "se-space-pipe")

  -- require("prototypes.recipes.space-exploration-compat.recipes-space-pipes")
  -- require("prototypes.recipes.space-exploration-compat.recipes-space-valves")

  -- ITEMS

  -- require("prototypes.items.space-exploration-compat.items-space-intermediary")
  -- require("prototypes.items.space-exploration-compat.items-space-valves")
  -- require("prototypes.items.space-exploration-compat.items-space-pipes")

  --[[
    Entities are generated as part of a script and perform a check at that stage.
  ]]
else
  -- Base Game
  pipe_recipe("t1", "pipe")
  pipe_recipe("t2", "pipe", "t1")
  pipe_recipe("t3", "pipe", "t2")
  
  pipe_recipe("space", "pipe")
end
