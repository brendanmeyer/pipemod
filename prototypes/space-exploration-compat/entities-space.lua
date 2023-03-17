
if mods["space-exploration"] then
    data.raw['pump']['underground-mini-pump'].collision_mask = afh_ground_only
    local space_pump = util.table.deepcopy(data.raw['pump']['underground-mini-pump'])
    space_pump.name = "underground-space-pump"
    for _, connection in pairs(space_pump.fluid_box.pipe_connections) do
        connection.max_underground_distance = 16
    end
    space_pump.minable.result = "underground-space-pump"
    space_pump.collision_mask = afh_space_only
    space_pump.se_allow_in_space = true
    data:extend{space_pump}
end
