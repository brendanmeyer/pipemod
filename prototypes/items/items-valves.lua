data:extend({
    -- ONE TO ONE PIPES
    {
        type = "item",
        name = "80-overflow-valve",
        icon = "__BBunderground-pipe-pack__/graphics/icons/overflow-valve.png",
        icon_size = 32,
        flags = nil,
        subgroup = "underground-buildings",
        order = "a-b",
        place_result = "80-overflow-valve",
        stack_size = 50
    },
    -- ONE TO TWO PIPES
    {
        type = "item",
        name = "80-top-up-valve",
        icon = "__BBunderground-pipe-pack__/graphics/icons/top-up-valve.png",
        icon_size = 32,
        flags = nil,
        subgroup = "underground-buildings",
        order = "a-b",
        place_result = "80-top-up-valve",
        stack_size = 50
    },
    {
        type = "item",
        name = "check-valve",
        icon = "__BBunderground-pipe-pack__/graphics/icons/check-valve.png",
        icon_size = 32,
        flags = nil,
        subgroup = "underground-buildings",
        order = "a-b",
        place_result = "check-valve",
        stack_size = 50
    },
    -- UNDERGROUND BUILDINGS
    -- pipe_item_helper(nil, "underground-mini-pump", "underground-buildings", "a-a", 50),
    {
        type = "item",
        name = "underground-mini-pump",
        icon = "__BBunderground-pipe-pack__/graphics/icons/underground-mini-pump.png",
        icon_size = 32,
        flags = nil,
        subgroup = "underground-buildings",
        order = "a-a",
        place_result = "underground-mini-pump",
        stack_size = 50
    },
})
