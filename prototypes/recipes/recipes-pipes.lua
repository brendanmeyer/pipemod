local function isempty(s) return s == nil or s == '' end

function pipe_recipe_helper1(pipe_level, name, ingredient_pipe, ingredient_pipe_count, sj_count, pc_count, ups_count, ispipe)
    pipestr = ""
    if ispipe == nil or ispipe then pipestr = "-pipe" end

    recipe = {
        type = "recipe",
        name = name.."-"..pipe_level..pipestr,
        ingredients = {
            {ingredient_pipe, ingredient_pipe_count},
            {"swivel-joint-"..pipe_level, sj_count},
            {"pipe-coupler-"..pipe_level, pc_count},
            {"underground-pipe-segment-"..pipe_level, ups_count}
        },
        enabled = false,
        result = name.."-"..pipe_level..pipestr
    }
    return recipe
end

function pipe_recipe(pipe_level, ingredient_pipe, previous_level)
    -- pipe_level = "-"..pipe_level 
    if isempty(ingredient_pipe) then ingredient_pipe = "pipe" .. pipe_level end
    data:extend({ 
        -- ONE TO ONE PIPES
        pipe_recipe_helper1(pipe_level, "one-to-one-forward", ingredient_pipe, 1, 1, 1, 5),
        -- {
        --     type = "recipe",
        --     name = "one-to-one-forward-" .. pipe_level .. "-pipe",
        --     ingredients = {
        --         {ingredient_pipe, 1},
        --         {"swivel-joint" .. pipe_level, 1},
        --         {"pipe-coupler" .. pipe_level, 1},
        --         {"underground-pipe-segment-" .. pipe_level, 5}
        --     },
        --     enabled = false,
        --     result = "one-to-one-forward-" .. pipe_level .. "-pipe"
        -- }, 
        --[[{
            type = "recipe",
            name = "one-to-two-L-FL-pipe",
            ingredients =
            {
                {"pipe", 1},
                {"swivel-joint", 1},
                {"small-pipe-coupler", 2},
                {"underground-pipe-segment-t1", 10},
            },
            enabled = false,
            result = "one-to-two-L-FL-pipe"
        },]] --
        -- ONE TO TWO PIPES
        {
            type = "recipe",
            name = "one-to-two-perpendicular-" .. pipe_level .. "-pipe",
            ingredients = {
                {ingredient_pipe, 1},
                {"swivel-joint-" .. pipe_level, 1},
                {"pipe-coupler-" .. pipe_level, 2},
                {"underground-pipe-segment-" .. pipe_level, 10}
            },
            enabled = false,
            result = "one-to-two-perpendicular-" .. pipe_level .. "-pipe"
        }, 
        -- ONE TO THREE PIPES
        {
            type = "recipe",
            name = "one-to-three-forward-" .. pipe_level .. "-pipe",
            ingredients = {
                {ingredient_pipe, 1},
                {"swivel-joint-" .. pipe_level, 1},
                {"pipe-coupler-" .. pipe_level, 3},
                {"underground-pipe-segment-" .. pipe_level, 15}
            },
            enabled = false,
            result = "one-to-three-forward-" .. pipe_level .. "-pipe"
        }, 
        -- ONE TO FOUR PIPE
        {
            type = "recipe",
            name = "one-to-four-forward-" .. pipe_level .. "-pipe",
            ingredients = {
                {ingredient_pipe, 1},
                {"pipe-coupler-" .. pipe_level, 4},
                {"underground-pipe-segment-" .. pipe_level, 20}
            },
            enabled = false,
            result = "one-to-four-forward-" .. pipe_level .. "-pipe"
        },
        -- MULTI PIPES
        {
            type = "recipe",
            name = "four-to-four-" .. pipe_level .. "-pipe",
            ingredients =
            {
                {ingredient_pipe, 1},
                {"pipe-coupler-" .. pipe_level, 4},
                {"underground-pipe-segment-" .. pipe_level, 20},
            },
            enabled = false,
            result = "four-to-four-" .. pipe_level .. "-pipe"
        },

        -- UNDERGROUND I PIPES
        {
            type = "recipe",
            name = "underground-i-" .. pipe_level .. "-pipe",
            ingredients = {
                {"pipe-coupler-" .. pipe_level, 2},
                {"underground-pipe-segment-" .. pipe_level, 10}
            },
            enabled = false,
            result = "underground-i-" .. pipe_level .. "-pipe"
        }, 
        -- UNDERGROUND L PIPES
        {
            type = "recipe",
            name = "underground-L-" .. pipe_level .. "-pipe",
            ingredients = {
                {"pipe-coupler-" .. pipe_level, 2},
                {"underground-pipe-segment-" .. pipe_level
                
                , 10}
            },
            enabled = false,
            result = "underground-L-" .. pipe_level .. "-pipe"
        }, -- UNDERGROUND T PIPES
        {
            type = "recipe",
            name = "underground-t-" .. pipe_level .. "-pipe",
            ingredients = {
                {"pipe-coupler-" .. pipe_level, 3},
                {"underground-pipe-segment-" .. pipe_level, 15}
            },
            enabled = false,
            result = "underground-t-" .. pipe_level .. "-pipe"
        }, -- UNDERGROUND CROSS PIPES
        {
            type = "recipe",
            name = "underground-cross-" .. pipe_level .. "-pipe",
            ingredients = {
                {"pipe-coupler-" .. pipe_level, 4},
                {"underground-pipe-segment-" .. pipe_level, 20}
            },
            enabled = false,
            result = "underground-cross-" .. pipe_level .. "-pipe"
        },
        -- Couplers
        {
            type = "recipe",
            name = "pipe-coupler-" .. pipe_level,
            ingredients =
            {
                {ingredient_pipe, 1},
            },
            enabled = false,
            result = "pipe-coupler-" .. pipe_level
        },
        --Swivel Joint
        {
            type = "recipe",
            name = "swivel-joint-" .. pipe_level,
            ingredients =
            {
                {ingredient_pipe, 1},
                {"iron-gear-wheel", 1},
            },
            enabled = false,
            result = "swivel-joint-" .. pipe_level
        },
        -- Segments
        {
            type = "recipe",
            name = "underground-pipe-segment-" .. pipe_level,
            ingredients =
            {
                {ingredient_pipe, 1},
            },
            enabled = false,
            result = "underground-pipe-segment-" .. pipe_level
        },
    })
end

pipe_recipe("t1", "pipe")
pipe_recipe("t2", "pipe", "t1")
pipe_recipe("t3", "pipe", "t2")
