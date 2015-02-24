require ("prototypes.metallurgy.cleaning.machines.functions")

data:extend(
{
  {
    type = "assembling-machine",
    name = "centrifuge",
    icon = "__MAIN-DyTech-Machine__/graphics/metallurgy/icons/centrifuge.png",
    flags = {"placeable-neutral","placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "centrifuge"},
    max_health = 300,
    corpse = "big-remnants",
    resistances = 
    {
      {
        type = "fire",
        percent = 70
      }
    },
    fluid_boxes =
    {
      {
        production_type = "output",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 100,
        base_level = 1,
        pipe_connections = {{ type="output", position = {0, -2} }}
      },
      {
        production_type = "output",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 100,
        base_level = 1,
        pipe_connections = {{ type="output", position = {0, 2} }}
      },
      {
        production_type = "input",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 100,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-2, 0} }}
      },
      {
        production_type = "input",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 100,
        base_level = -1,
        pipe_connections = {{ type="input", position = {2, 0} }}
      },
      off_when_no_fluid_recipe = true
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    fast_replaceable_group = "assembling-machine",
    animation =
    {
      filename = "__MAIN-DyTech-Machine__/graphics/metallurgy/entity/metallurgy-machines/centrifuge.png",
      priority = "high",
      width = 119,
      height = 99,
      frame_count = 48,
      line_length = 8,
      animation_speed = 0.64,
      shift = {0.21875, 0.05}
    },
    crafting_categories = {"centrifuge"},
    crafting_speed = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.01 / 0.5
    },
    energy_usage = "125kW",
    ingredient_count = 15,
    module_slots = 5,
    allowed_effects = {"consumption", "speed", "pollution"}
  },
}
)