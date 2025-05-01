--data.lua

data.raw["utility-constants"]["default"].default_pipeline_extent = 80

local electricPump = table.deepcopy(data.raw["pump"]["pump"])

electricPump.name = "electric-pump"
electricPump.pumping_speed = 2400
electricPump.energy_usage = "600kW"

local recipe = {
  type = "recipe",
  name = "electric-pump",
  enabled = true,
  energy_required = 6,
  ingredients = {
    {type = "item", name = "electric-engine-unit", amount = 2},
    {type = "item", name = "pipe", amount = 4},
    {type = "item", name = "steel-plate", amount = 4},
    {type = "item", name = "advanced-circuit", amount = 2}
},
  results = {{type = "item", name = "electric-pump", amount = 1}}
}

data:extend{{electricPump, recipe}}