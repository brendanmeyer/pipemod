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

