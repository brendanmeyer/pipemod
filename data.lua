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


levelsTable = {}
--   ["t1"] = {1, Color.from_rgb(255,191,0,255/2)},
--   ["t2"] = {2, Color.from_rgb(227,38,45,255/2)},
--   ["t3"] = {3, Color.from_rgb(38,173,227,255/2)},
--   --["t4"] = {4, Color.from_rgb(75,0,130,255)},
--   --["t5"] = {5, Color.from_rgb(5,73,53,255)},
-- }

if _G.mods["space-exploration"] then
  levelsTable = {
    ["t1"] = {1, Color.from_rgb(255,191,0,255/2)},
    ["t2"] = {2, Color.from_rgb(227,38,45,255/2)},
    ["t3"] = {3, Color.from_rgb(38,173,227,255/2)},
    ["space"] = {4, Color.from_rgb(255,255,255,255/2)}
  }
elseif _G.mods["boblogistics"] then
  levelsTable["stone"] = {1, Color.from_rgb(255,255,255,255/2)}
  levelsTable["t1"] = {1, Color.from_rgb(255,255,255,255/2)}
else
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
  -- GROUPS
  require("prototypes.space-exploration-compat.groups-space")

  -- ENTITIES
  require("prototypes.space-exploration-compat.entities-space")

  -- RECIPES
  pipe_recipe("t1", "pipe")
  pipe_recipe("t2", "pipe", "t1")
  pipe_recipe("t3", "pipe", "t2")
  
  pipe_recipe("space", "se-space-pipe")

  -- RECIPES Modifications
  require("prototypes.space-exploration-compat.recipes-space-pipes")

  -- require("prototypes.space-exploration-compat.recipes-space-pipes")
  -- require("prototypes.space-exploration-compat.recipes-space-valves")

  -- ITEMS

  -- require("prototypes.space-exploration-compat.items-space-intermediary")
  -- require("prototypes.space-exploration-compat.items-space-valves")
  -- require("prototypes.space-exploration-compat.items-space-pipes")

  -- TECHNOLOGY
  add_technology("t1", {'advanced-underground-piping'}, {count = 50, ingredients = {{'automation-science-pack', 1}}, time = 30})
  add_technology("t2", {'advanced-underground-piping-t1'}, {count = 100, ingredients = {{'automation-science-pack', 1}, {'logistic-science-pack', 1}}, time = 30})
  add_technology("t3", {'advanced-underground-piping-t2'}, {count = 200, ingredients = {{'automation-science-pack', 1}, {'logistic-science-pack', 1}, {'chemical-science-pack', 1}}, time = 30})

  add_technology(
    "space", 
    {'advanced-underground-piping-t3', 'se-heavy-girder'}, 
    {count = 200, ingredients = {{'automation-science-pack', 1}, {'logistic-science-pack', 1}, {'chemical-science-pack', 1}, {'se-rocket-science-pack', 1}, {'se-material-science-pack-1', 1}}, time = 30}
  )

  --[[
    Entities are generated as part of a script and perform a check at that stage.
  ]]
elseif _G.mods["boblogistics"] then
  pipe_recipe("stone", "stone-pipe")
  pipe_recipe("t1", "pipe")
  add_technology("stone", {'advanced-underground-piping'}, {count = 50, ingredients = {{'automation-science-pack', 1}}, time = 30})
  add_technology("t1", {'advanced-underground-piping-t1'}, {count = 50, ingredients = {{'automation-science-pack', 1}}, time = 30})

else
  -- Base Game
  pipe_recipe("t1", "pipe")
  pipe_recipe("t2", "pipe", "t1")
  pipe_recipe("t3", "pipe", "t2")

  add_technology("t1", {'advanced-underground-piping'}, {count = 50, ingredients = {{'automation-science-pack', 1}}, time = 30})
  add_technology("t2", {'advanced-underground-piping-t1'}, {count = 100, ingredients = {{'automation-science-pack', 1}, {'logistic-science-pack', 1}}, time = 30})
  add_technology("t3", {'advanced-underground-piping-t2'}, {count = 200, ingredients = {{'automation-science-pack', 1}, {'logistic-science-pack', 1}, {'chemical-science-pack', 1}}, time = 30})
end
