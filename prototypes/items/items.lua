
function pipe_item_helper(pipe_level, name, subgroup, order, stack_size, ispipe, isplaceable)
    pipestr = ""
    if ispipe == nil or ispipe then pipestr = "-pipe" end

    item = {
        type = "item",
        name = name.."-"..pipe_level..pipestr,
        icon = "__underground-pipe-pack__/graphics/icons/level-"..pipe_level.."/"..name..".png",
        icon_size = 32,
        flags = nil,
        subgroup = subgroup,
        order = order,
        stack_size = stack_size
    }
    
    if (ispipe == nil or ispipe) or (isplaceable == nil or isplaceable) then
        item.place_result = name.."-"..pipe_level..pipestr
    end
    return item
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
        -- FOUR TO FOUR PIPE
        pipe_item_helper(pipe_level, "four-to-four", "multi-pipes", "b-d", 50),
        -- INTERMEDIARY
        pipe_item_helper(pipe_level, "swivel-joint", "intermediates", "a-a", 100, false, false),
        pipe_item_helper(pipe_level, "pipe-coupler", "intermediates", "a-b", 100, false, false),
        -- UNDERGROUND PIPE SEGMENTS
        pipe_item_helper(pipe_level, "underground-pipe-segment", "intermediates", "a-e", 100, false, false),
    })
end

for levelsS, levelsN in pairs(levelsTable) do
    pipe_item(levelsS)
end