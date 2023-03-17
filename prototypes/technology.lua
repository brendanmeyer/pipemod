function add_technology_helper(
    name, icon_path, prerequisites, unlock_effects, unit, order)
    local effects = {}
    for _, ue in pairs(unlock_effects) do
        effects[#effects + 1] = {type = 'unlock-recipe', recipe = ue}
    end

    data:extend(
        {
            {
                type = 'technology',
                name = name,
                icon_size = 128,
                icon = icon_path,
                prerequisites = prerequisites,
                effects = effects,
                unit = unit,
                order = order
            }
        })
end

function add_technology(pipe_level, prerequisites, unit)
    add_technology_helper(
        'advanced-underground-piping-'..pipe_level,
        '__underground-pipe-pack__/graphics/technology/advanced-underground-piping-'..pipe_level..'.png',
        {'fluid-handling'}, {
            -- ONE TO ONE PIPES
            'one-to-one-forward-'..pipe_level..'-pipe',
            -- ONE TO TWO PIPES
            'one-to-two-perpendicular-'..pipe_level..'-pipe',
            -- 'one-to-two-L-FL-pipe',
            -- ONE TO THREE PIPES
            'one-to-three-forward-'..pipe_level..'-pipe',
            -- ONE TO FOUR PIPE
            'one-to-four-forward-'..pipe_level..'-pipe',
            -- UNDERGROUND I PIPES
            'underground-i-'..pipe_level..'-pipe',
            -- UNDERGROUND L PIPES
            'underground-L-'..pipe_level..'-pipe',
            -- UNDERGROUND T PIPES
            'underground-t-'..pipe_level..'-pipe',
            -- UNDERGROUND CROSS PIPES
            'underground-cross-'..pipe_level..'-pipe',
            -- UNDERGROUND BUILDINGS
            'underground-mini-pump',
            -- MULTI PIPES
            'four-to-four-'..pipe_level..'-pipe',
            -- INTERMEDIARY MATERIALS
            'swivel-joint-'..pipe_level,
            'pipe-coupler-'..pipe_level,
            'underground-pipe-segment-'..pipe_level,
            -- VALVES
            '80-overflow-valve',
            '80-top-up-valve',
            'check-valve'
        }, 
        unit,
        'd-a-a'
    )
end

add_technology("t1", {'advanced-underground-piping'}, {count = 50, ingredients = {{'automation-science-pack', 1}}, time = 30})
add_technology("t2", {'advanced-underground-piping-t1'}, {count = 100, ingredients = {{'automation-science-pack', 1}, {'logistic-science-pack', 1}}, time = 30})
add_technology("t2", {'advanced-underground-piping-t2'}, {count = 200, ingredients = {{'automation-science-pack', 1}, {'logistic-science-pack', 1}, {'chemical-science-pack', 1}}, time = 30})

-- data:extend(
--     {
--         {
--             type = 'technology',
--             name = 'advanced-underground-piping-t2',
--             icon_size = 128,
--             icon = '__underground-pipe-pack__/graphics/technology/advanced-underground-piping-t2.png',
--             prerequisites = {'advanced-underground-piping-t1'},
--             effects = {
--                 -- ONE TO ONE PIPES
--                 {type = 'unlock-recipe', recipe = 'one-to-one-forward-t2-pipe'},
--                 -- ONE TO TWO PIPES
--                 {
--                     type = 'unlock-recipe',
--                     recipe = 'one-to-two-perpendicular-t2-pipe'
--                 },
--                 --
--                 --[[{
--           type = "unlock-recipe",
--           recipe = "one-to-two-L-FL-t2-pipe"
--         },]] -- ONE TO THREE PIPES
--                 {
--                     type = 'unlock-recipe',
--                     recipe = 'one-to-three-forward-t2-pipe'
--                 },
--                 -- ONE TO FOUR PIPE
--                 {type = 'unlock-recipe', recipe = 'one-to-four-forward-t2-pipe'},
--                 -- UNDERGROUND I PIPES
--                 {type = 'unlock-recipe', recipe = 'underground-i-t2-pipe'},
--                 -- UNDERGROUND L PIPES
--                 {type = 'unlock-recipe', recipe = 'underground-L-t2-pipe'},
--                 -- UNDERGROUND T PIPES
--                 {type = 'unlock-recipe', recipe = 'underground-t-t2-pipe'},
--                 -- UNDERGROUND CROSS PIPES
--                 {type = 'unlock-recipe', recipe = 'underground-cross-t2-pipe'},
--                 -- INTERMEDIARY MATERIALS
--                 {type = 'unlock-recipe', recipe = 'pipe-coupler-t2'},
--                 {type = 'unlock-recipe', recipe = 'underground-pipe-segment-t2'}
--             },
--             unit = {
--                 count = 100,
--                 ingredients = {
--                     {'automation-science-pack', 1},
--                     {'logistic-science-pack', 1}
--                 },
--                 time = 30
--             },
--             order = 'd-a-a'
--         },
--         {
--             type = 'technology',
--             name = 'advanced-underground-piping-t3',
--             icon_size = 128,
--             icon = '__underground-pipe-pack__/graphics/technology/advanced-underground-piping-t3.png',
--             prerequisites = {'advanced-underground-piping-t2'},
--             effects = {
--                 -- ONE TO ONE PIPES
--                 {type = 'unlock-recipe', recipe = 'one-to-one-forward-t3-pipe'},
--                 -- ONE TO TWO PIPES
--                 {
--                     type = 'unlock-recipe',
--                     recipe = 'one-to-two-perpendicular-t3-pipe'
--                 },
--                 --
--                 --[[{
--           type = "unlock-recipe",
--           recipe = "one-to-two-L-FL-t3-pipe"
--         },]] -- ONE TO THREE PIPES
--                 {
--                     type = 'unlock-recipe',
--                     recipe = 'one-to-three-forward-t3-pipe'
--                 },
--                 -- ONE TO FOUR PIPE
--                 {type = 'unlock-recipe', recipe = 'one-to-four-forward-t3-pipe'},
--                 -- UNDERGROUND I PIPES
--                 {type = 'unlock-recipe', recipe = 'underground-i-t3-pipe'},
--                 -- UNDERGROUND L PIPES
--                 {type = 'unlock-recipe', recipe = 'underground-L-t3-pipe'},
--                 -- UNDERGROUND T PIPES
--                 {type = 'unlock-recipe', recipe = 'underground-t-t3-pipe'},
--                 -- UNDERGROUND CROSS PIPES
--                 {type = 'unlock-recipe', recipe = 'underground-cross-t3-pipe'},
--                 -- INTERMEDIARY MATERIALS
--                 {type = 'unlock-recipe', recipe = 'pipe-coupler-t3'},
--                 {type = 'unlock-recipe', recipe = 'underground-pipe-segment-t3'}
--             },
--             unit = {
--                 count = 200,
--                 ingredients = {
--                     {'automation-science-pack', 1},
--                     {'logistic-science-pack', 1},
--                     {'chemical-science-pack', 1}
--                 },
--                 time = 30
--             },
--             order = 'd-a-a'
--         }
--     })

-- if mods['space-exploration'] then
    add_technology("space", {'advanced-underground-piping-t3'}, {count = 200, ingredients = {{'automation-science-pack', 1}, {'logistic-science-pack', 1}, {'chemical-science-pack', 1}}, time = 30})
    -- data:extend(
    --     {
    --         {
    --             type = 'technology',
    --             name = 'advanced-underground-piping-space',
    --             icon_size = 128,
    --             icon = '__underground-pipe-pack__/graphics/technology/advanced-underground-piping-space.png',
    --             prerequisites = {
    --                 'advanced-underground-piping-t3',
    --                 'se-heavy-girder'
    --             },
    --             effects = {
    --                 -- ONE TO ONE PIPES
    --                 {
    --                     type = 'unlock-recipe',
    --                     recipe = 'one-to-one-forward-space-pipe'
    --                 },
    --                 -- ONE TO TWO PIPES
    --                 {
    --                     type = 'unlock-recipe',
    --                     recipe = 'one-to-two-perpendicular-space-pipe'
    --                 },
    --                 --
    --                 --[[{
    --     type = "unlock-recipe",
    --     recipe = "one-to-two-L-FL-space-pipe"
    --   },]] -- ONE TO THREE PIPES
    --                 {
    --                     type = 'unlock-recipe',
    --                     recipe = 'one-to-three-forward-space-pipe'
    --                 },
    --                 -- ONE TO FOUR PIPE
    --                 {type = 'unlock-recipe', recipe = 'one-to-four-space-pipe'},
    --                 -- UNDERGROUND I PIPES
    --                 {
    --                     type = 'unlock-recipe',
    --                     recipe = 'underground-i-space-pipe'
    --                 },
    --                 -- UNDERGROUND L PIPES
    --                 {
    --                     type = 'unlock-recipe',
    --                     recipe = 'underground-L-space-pipe'
    --                 },
    --                 -- UNDERGROUND T PIPES
    --                 {
    --                     type = 'unlock-recipe',
    --                     recipe = 'underground-t-space-pipe'
    --                 },
    --                 -- UNDERGROUND CROSS PIPES
    --                 {
    --                     type = 'unlock-recipe',
    --                     recipe = 'underground-cross-space-pipe'
    --                 },
    --                 -- INTERMEDIARY MATERIALS
    --                 {type = 'unlock-recipe', recipe = 'space-pipe-coupler'},
    --                 {
    --                     type = 'unlock-recipe',
    --                     recipe = 'underground-pipe-segment-space'
    --                 },
    --                 -- VALVES
    --                 {type = 'unlock-recipe', recipe = '80-overflow-space-valve'},
    --                 {type = 'unlock-recipe', recipe = '80-top-up-space-valve'},
    --                 {type = 'unlock-recipe', recipe = 'check-space-valve'},
    --                 -- UNDERGROUND BUILDINGS
    --                 {type = 'unlock-recipe', recipe = 'underground-space-pump'}
    --             },
    --             unit = {
    --                 count = 200,
    --                 ingredients = {
    --                     {'automation-science-pack', 1},
    --                     {'logistic-science-pack', 1},
    --                     {'chemical-science-pack', 1},
    --                     {'se-rocket-science-pack', 1},
    --                     {'se-material-science-pack-1', 1}
    --                 },
    --                 time = 30
    --             },
    --             order = 'd-a-a'
    --         }
    --     })
-- end
