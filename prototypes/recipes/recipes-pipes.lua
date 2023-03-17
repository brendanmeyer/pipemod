local function isempty(s) return s == nil or s == '' end
local function posint(i) return i ~= nil and i > 0 end

function pipe_recipe_helper(pipe_level, name, ingredient_pipe, ingredient_pipe_count, sj_count, pc_count, ups_count, igw_count, prev_level, prev_level_count, ispipe)
    pipestr = ""
    if ispipe == nil or ispipe then pipestr = "-pipe" end

    ingredients = {}
    if posint(ingredient_pipe_count) then ingredients[#ingredients + 1] = {ingredient_pipe, ingredient_pipe_count} end
    if posint(sj_count) then ingredients[#ingredients + 1] = {"swivel-joint-"..pipe_level, sj_count} end
    if posint(pc_count) then ingredients[#ingredients + 1] = {"pipe-coupler-"..pipe_level, pc_count} end
    if posint(ups_count) then ingredients[#ingredients + 1] = {"underground-pipe-segment-"..pipe_level, ups_count} end
    if posint(igw_count) then ingredients[#ingredients + 1] = {"iron-gear-wheel", igw_count} end
    if not isempty(prev_level) and posint(prev_level_count) then ingredients[#ingredients + 1] = {name.."-"..prev_level, prev_level_count} end

    recipe = {
        type = "recipe",
        name = name.."-"..pipe_level..pipestr,
        ingredients = ingredients,
        enabled = false,
        result = name.."-"..pipe_level..pipestr
    }
    return recipe
end

function pipe_recipe(pipe_level, ingredient_pipe, previous_level)
    if isempty(ingredient_pipe) then ingredient_pipe = "pipe" .. pipe_level end
    data:extend({ 
        -- ONE TO ONE PIPES
        pipe_recipe_helper(pipe_level, "one-to-one-forward", ingredient_pipe, 1, 1, 1, 5),
        -- ONE TO TWO PIPES
        -- pipe_recipe_helper(pipe_level, "one-to-two-L-FL", ingredient_pipe, 1, 1, 2, 10),
        pipe_recipe_helper(pipe_level, "one-to-two-perpendicular", ingredient_pipe, 1, 1, 2, 10),
        -- ONE TO THREE PIPES
        pipe_recipe_helper(pipe_level, "one-to-three-forward", ingredient_pipe, 1, 1, 3, 15),
        -- ONE TO FOUR PIPE
        pipe_recipe_helper(pipe_level, "one-to-four-forward", ingredient_pipe, 1, 0, 4, 20),
        -- MULTI PIPES
        pipe_recipe_helper(pipe_level, "four-to-four", ingredient_pipe, 1, 0, 4, 20),
        -- UNDERGROUND I PIPES
        pipe_recipe_helper(pipe_level, "underground-i", ingredient_pipe, 0, 0, 2, 10),
        -- UNDERGROUND L PIPES
        pipe_recipe_helper(pipe_level, "underground-L", ingredient_pipe, 0, 0, 2, 10),
        -- UNDERGROUND T PIPES
        pipe_recipe_helper(pipe_level, "underground-t", ingredient_pipe, 0, 0, 3, 15),
        -- UNDERGROUND CROSS PIPES
        pipe_recipe_helper(pipe_level, "underground-cross", ingredient_pipe, 0, 0, 4, 20),
        -- Couplers
        pipe_recipe_helper(pipe_level, "pipe-coupler", ingredient_pipe, 2, 0, 0, 0, 0, previous_level, 1, false),
        --Swivel Joint
        pipe_recipe_helper(pipe_level, "swivel-joint", ingredient_pipe, 2, 0, 0, 0, 2, nil, 0, false),
        -- Segments
        pipe_recipe_helper(pipe_level, "underground-pipe-segment", ingredient_pipe, 2, 0, 0, 0, 0, previous_level, 1, false),
    })
end

