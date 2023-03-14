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
  ["1"] = 1,
  ["2"] = 2,
  ["3"] = 3
}

if mods["space-exploration"] then
  levelsTable["space"] = 4
end

require("prototypes.entities.pipecovers")
require("prototypes.entities.underground-pipes")
require("prototypes.entities.underground-buildings")
require("prototypes.entities.pipes-to-ground")
require("prototypes.entities.pipes")
require("prototypes.entities.valves")
require("prototypes.groups")
require("prototypes.items.items-valves")
require("prototypes.items.items-t1")
require("prototypes.items.items-t2")
require("prototypes.items.items-t3")
require("prototypes.items.items-intermediary")
require("prototypes.recipes.recipes-t1")
require("prototypes.recipes.recipes-t2")
require("prototypes.recipes.recipes-t3")
require("prototypes.recipes.recipes-valves")
require("prototypes.recipes.recipes-intermediary")
require("prototypes.technology")
require("prototypes.controls")
if _G.mods["space-exploration"] then

  -- RECIPES

  require("prototypes.recipes.space-exploration-compat.recipes-space-pipes")
  require("prototypes.recipes.space-exploration-compat.recipes-space-valves")

  -- ITEMS

  require("prototypes.items.space-exploration-compat.items-space-intermediary")
  require("prototypes.items.space-exploration-compat.items-space-valves")
  require("prototypes.items.space-exploration-compat.items-space-pipes")

  --[[
    Entities are generated as part of a script and perform a check at that stage.
  ]]
end
