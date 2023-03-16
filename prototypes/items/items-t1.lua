
function pipe_item(pipe_level)
    data:extend({
        -- ONE TO ONE PIPES
        {
            type = "item",
            name = "one-to-one-forward-"..pipe_level.."-pipe",
            icon = "__underground-pipe-pack__/graphics/icons/one-to-one-"..pipe_level..".png",
            icon_size = 32,
            flags = nil,
            subgroup = "pipes-to-ground",
            order = "c-a",
            place_result = "one-to-one-forward-"..pipe_level.."-pipe",
            stack_size = 50
        },
        -- ONE TO TWO PIPES
        {
            type = "item",
            name = "one-to-two-perpendicular-"..pipe_level.."-pipe",
            icon = "__underground-pipe-pack__/graphics/icons/one-to-two-parallel-"..pipe_level..".png",
            icon_size = 32,
            flags = nil,
            subgroup = "pipes-to-ground",
            order = "c-b",
            place_result = "one-to-two-perpendicular-"..pipe_level.."-pipe",
            stack_size = 50
        },
        --[[{
            type = "item",
            name = "one-to-two-L-FL-pipe",
            icon = "__underground-pipe-pack__/graphics/icons/one-to-two-L-t1.png",
            icon_size = 32,
            flags = nil,
            subgroup = "pipes-to-ground",
            order = "c-c",
            place_result = "one-to-two-L-FL-pipe",
            stack_size = 50
        },]]--
        -- ONE TO THREE PIPES
        {
            type = "item",
            name = "one-to-three-forward-"..pipe_level.."-pipe",
            icon = "__underground-pipe-pack__/graphics/icons/one-to-three-"..pipe_level..".png",
            icon_size = 32,
            flags = nil,
            subgroup = "pipes-to-ground",
            order = "c-d",
            place_result = "one-to-three-forward-"..pipe_level.."-pipe",
            stack_size = 50
        },
        -- ONE TO FOUR PIPES
        {
            type = "item",
            name = "one-to-four-"..pipe_level.."-pipe",
            icon = "__underground-pipe-pack__/graphics/icons/one-to-four-"..pipe_level..".png",
            icon_size = 32,
            flags = nil,
            subgroup = "pipes-to-ground",
            order = "c-e",
            place_result = "one-to-four-"..pipe_level.."-pipe",
            stack_size = 50
        },
        -- UNDERGROUND I PIPES
        {
            type = "item",
            name = "underground-i-"..pipe_level.."-pipe",
            icon = "__underground-pipe-pack__/graphics/icons/underground-i-"..pipe_level..".png",
            icon_size = 32,
            flags = nil,
            subgroup = "underground-pipes",
            order = "d-a",
            place_result = "underground-i-"..pipe_level.."-pipe",
            stack_size = 50
        },
        -- UNDERGROUND L PIPES
        {
            type = "item",
            name = "underground-L-"..pipe_level.."-pipe",
            icon = "__underground-pipe-pack__/graphics/icons/underground-L-"..pipe_level..".png",
            icon_size = 32,
            flags = nil,
            subgroup = "underground-pipes",
            order = "d-b",
            place_result = "underground-L-"..pipe_level.."-pipe",
            stack_size = 50
        },
        -- UNDERGROUND T PIPES
        {
            type = "item",
            name = "underground-t-"..pipe_level.."-pipe",
            icon = "__underground-pipe-pack__/graphics/icons/underground-t-"..pipe_level..".png",
            icon_size = 32,
            flags = nil,
            subgroup = "underground-pipes",
            order = "d-c",
            place_result = "underground-t-"..pipe_level.."-pipe",
            stack_size = 50
        },
        -- UNDERGROUND CROSS PIPE
        {
            type = "item",
            name = "underground-cross-"..pipe_level.."-pipe",
            icon = "__underground-pipe-pack__/graphics/icons/underground-cross-"..pipe_level..".png",
            icon_size = 32,
            flags = nil,
            subgroup = "underground-pipes",
            order = "d-d",
            place_result = "underground-cross-"..pipe_level.."-pipe",
            stack_size = 50
        },
        -- UNDERGROUND BUILDINGS
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
        {
            type = "item",
            name = "4-to-4-"..pipe_level.."-pipe",
            icon = "__underground-pipe-pack__/graphics/icons/four-to-four-"..pipe_level..".png",
            icon_size = 32,
            flags = nil,
            subgroup = "multi-pipes",
            order = "b-d",
            place_result = "4-to-4-"..pipe_level.."-pipe",
            stack_size = 50
        },
        -- INTERMEDIARY
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