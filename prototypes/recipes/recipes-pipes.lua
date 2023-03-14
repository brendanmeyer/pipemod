local function isempty(s)
    return s == nil or s == ''
  end
  
  function pipe_recipe(pipe_level, ingredient_pipe)
    -- pipe_level = "-"..pipe_level 
    if isempty(ingredient_pipe) then 
      ingredient_pipe = "pipe"..pipe_level
    end
    data:extend({
      -- ONE TO ONE PIPES
      {
        type = "recipe",
        name = "one-to-one-forward-"..pipe_level.."-pipe",
        ingredients =
        {
          {ingredient_pipe, 1},
          {"swivel-joint", 1},
          {"small-pipe-coupler", 1},
          {"underground-pipe-segment-t1", 5}
        },
        enabled = false,
        result = "one-to-one-forward-"..pipe_level.."-pipe"
      },
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
      },]]--
      -- ONE TO TWO PIPES
      {
        type = "recipe",
        name = "one-to-two-perpendicular-"..pipe_level.."-pipe",
        ingredients =
        {
          {ingredient_pipe, 1},
          {"swivel-joint", 1},
          {"small-pipe-coupler", 2},
          {"underground-pipe-segment-t1", 10},
        },
        enabled = false,
        result = "one-to-two-perpendicular-"..pipe_level.."-pipe"
      },
      -- ONE TO THREE PIPES
      {
        type = "recipe",
        name = "one-to-three-forward-"..pipe_level.."-pipe",
        ingredients =
        {
          {ingredient_pipe, 1},
          {"swivel-joint", 1},
          {"small-pipe-coupler", 3},
          {"underground-pipe-segment-t1", 15},
        },
        enabled = false,
        result = "one-to-three-forward-"..pipe_level.."-pipe"
      },  
      -- ONE TO FOUR PIPE
      {
        type = "recipe",
        name = "one-to-four-"..pipe_level.."-pipe",
        ingredients =
        {
          {ingredient_pipe, 1},
          {"small-pipe-coupler", 4},
          {"underground-pipe-segment-t1", 20},
        },
        enabled = false,
        result = "one-to-four-"..pipe_level.."-pipe"
      },
      -- UNDERGROUND I PIPES
      {
        type = "recipe",
        name = "underground-i-"..pipe_level.."-pipe",
        ingredients =
        {
          {"small-pipe-coupler", 2},
          {"underground-pipe-segment-t1", 10},
        },
        enabled = false,
        result = "underground-i-"..pipe_level.."-pipe"
      },
      -- UNDERGROUND L PIPES
      {
        type = "recipe",
        name = "underground-L-"..pipe_level.."-pipe",
        ingredients =
        {
          {"small-pipe-coupler", 2},
          {"underground-pipe-segment-t1", 10},
        },
        enabled = false,
        result = "underground-L-"..pipe_level.."-pipe"
      },
      -- UNDERGROUND T PIPES
      {
        type = "recipe",
        name = "underground-t-"..pipe_level.."-pipe",
        ingredients =
        {
          {"small-pipe-coupler", 3},
          {"underground-pipe-segment-t1", 15},
        },
        enabled = false,
        result = "underground-t-"..pipe_level.."-pipe"
      },
      -- UNDERGROUND CROSS PIPES
      {
        type = "recipe",
        name = "underground-cross-"..pipe_level.."-pipe",
        ingredients =
        {
          {"small-pipe-coupler", 4},
          {"underground-pipe-segment-t1", 20},
        },
        enabled = false,
        result = "underground-cross-"..pipe_level.."-pipe"
      },
    })
  end
  
  pipe_recipe("t1", "pipe")
  pipe_recipe("t2", "pipe")
  pipe_recipe("t3", "pipe")