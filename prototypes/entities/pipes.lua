

function pipe_entity(pipe_level)
    data:extend({
        {
            type = "pipe",
            name = "four-to-four-"..pipe_level.."-pipe",
            clamped = true,
            icon = "__BBunderground-pipe-pack__/graphics/icons/level-"..pipe_level.."/four-to-four.png",
            icon_size = 32,
            flags = {"placeable-neutral", "player-creation"},
            minable = {hardness = 0.2, mining_time = 0.5, result = "four-to-four-"..pipe_level.."-pipe"},
            max_health = 100,
            corpse = "small-remnants",
            se_allow_in_space = false,
            resistances =
            {
                {
                    type = "fire",
                    percent = 80
                },
                {
                    type = "impact",
                    percent = 30
                }
            },
            fast_replaceable_group = "pipe",
            collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
            selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
            fluid_box = {
                base_area = 1,
                pipe_connections = {
                    { position = {0, -1} },
                    { position = {1, 0} },
                    { position = {0, 1} },
                    { position = {-1, 0} },
                    {
                        position = {0, -1},
                        max_underground_distance = 11
                    },
                    {
                        position = {0, 1},
                        max_underground_distance = 11
                    },
                    {
                        position = {1, 0},
                        max_underground_distance = 11
                    },
                    {
                        position = {-1, 0},
                        max_underground_distance = 11
                    }
                }
            },
            underground_sprite = {
                filename = "__core__/graphics/arrows/underground-lines.png",
                priority = "extra-high-no-scale",
                width = 64,
                height = 64,
                scale = 0.5
            },
            vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
            pictures = _G.pipepictures(),
            working_sound = {
                sound = {
                    {
                    filename = "__base__/sound/pipe.ogg",
                    volume = 0.85
                    }
                },
                match_volume_to_activity = true,
                max_sounds_per_type = 3
            },

            horizontal_window_bounding_box = {{-0.25, -0.28125}, {0.25, 0.15625}},
            vertical_window_bounding_box = {{-0.28125, -0.5}, {0.03125, 0.125}}
        },
    })
end

for levelsS, levelsN in pairs(levelsTable) do
    pipe_entity(levelsS)
end