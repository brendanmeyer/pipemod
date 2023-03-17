
function pipe_item_helper(pipe_level, name, subgroup, order, stack_size, ispipe)
    pipestr = ""
    if ispipe == nil or ispipe then pipestr = "-pipe" end

    return {
        type = "item",
        name = name.."-"..pipe_level..pipestr,
        icon = "__underground-pipe-pack__/graphics/icons/level-t"..pipe_level.."/"..name..".png",
        icon_size = 32,
        flags = nil,
        subgroup = subgroup,
        order = order,
        place_result = name.."-"..pipe_level..pipestr,
        stack_size = stack_size
    }
end

function pipe_item(pipe_level)
    data:extend({
        -- ONE TO ONE PIPES
        pipe_item_helper(pipe_level, "one-to-one-forward", "pipes-to-ground", "c-a", 50),
        -- ONE TO TWO PIPES
        pipe_item_helper(pipe_level, "one-to-two-perpendicular", "pipes-to-ground", "c-b", 50),
        -- pipe_item_helper(pipe_level, "one-to-two-L-FL", "pipes-to-ground", "c-c", 50),
        -- ONE TO THREE PIPES
        pipe_item_helper(pipe_level, "one-to-three-forward", "pipes-to-ground", "c-d", 50),
        -- ONE TO FOUR PIPES
        pipe_item_helper(pipe_level, "one-to-four-forward", "pipes-to-ground", "c-e", 50),
        -- UNDERGROUND I PIPES
        pipe_item_helper(pipe_level, "underground-i", "underground-pipes", "d-a", 50),
        -- UNDERGROUND L PIPES
        pipe_item_helper(pipe_level, "underground-L", "underground-pipes", "d-b", 50),
        -- UNDERGROUND T PIPES
        pipe_item_helper(pipe_level, "underground-t", "underground-pipes", "d-c", 50),
        -- UNDERGROUND CROSS PIPE
        pipe_item_helper(pipe_level, "underground-cross", "underground-pipes", "d-d", 50),
        -- UNDERGROUND BUILDINGS
        -- pipe_item_helper(nil, "underground-mini-pump", "underground-buildings", "a-a", 50),
        {
            type = "item",
            name = "underground-mini-pump",
            icon = "__underground-pipe-pack__/graphics/icons/underground-mini-pump.png",
            icon_size = 32,
            flags = nil,
            subgroup = "underground-buildings",
            order = "a-a",
            place_result = "underground-mini-pump",
            stack_size = 50
        },
        -- FOUR TO FOUR PIPE
        pipe_item_helper(pipe_level, "four-to-four", "multi-pipes", "b-d", 50),
        -- INTERMEDIARY
        pipe_item_helper(pipe_level, "one-to-three-forward", "pipes-to-ground", "c-d", 50),
        {
            type = "item",
            name = "swivel-joint-"..pipe_level,
            icon = "__underground-pipe-pack__/graphics/icons/swivel-joint-"..pipe_level..".png",
            icon_size = 32,
            flags = nil,
            subgroup = "intermediates",
            order = "a-a",
            stack_size = 100
          },
          pipe_item_helper(pipe_level, "one-to-three-forward", "pipes-to-ground", "c-d", 50),
          {
            type = "item",
            name = "pipe-coupler-"..pipe_level,
            icon = "__underground-pipe-pack__/graphics/icons/pipe-coupler-"..pipe_level..".png",
            icon_size = 32,
            flags = nil,
            subgroup = "intermediates",
            order = "a-b",
            stack_size = 100
          },
          -- UNDERGROUND PIPE SEGMENTS
        pipe_item_helper(pipe_level, "one-to-three-forward", "pipes-to-ground", "c-d", 50),
          {
            type = "item",
            name = "underground-pipe-segment-"..pipe_level,
            icon = "__underground-pipe-pack__/graphics/icons/underground-pipe-segment-"..pipe_level..".png",
            icon_size = 32,
            flags = nil,
            subgroup = "intermediates",
            order = "a-e",
            stack_size = 100
          },
    })
end

for levelsS, levelsN in pairs(levelsTable) do
    pipe_item(levelsS)
end