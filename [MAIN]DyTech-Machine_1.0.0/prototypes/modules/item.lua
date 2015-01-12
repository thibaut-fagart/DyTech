data.raw["module"]["speed-module"].icon = "__DyTech-Modules__/graphics/icons/speed-module.png"
data.raw["module"]["speed-module-2"].icon = "__DyTech-Modules__/graphics/icons/speed-module-2.png"
data.raw["module"]["speed-module-3"].icon = "__DyTech-Modules__/graphics/icons/speed-module-3.png"
data.raw["module"]["speed-module"].effect = { speed = {bonus = 0.2}, consumption = {bonus = 0.1}}
data.raw["module"]["speed-module-2"].effect = { speed = {bonus = 0.4}, consumption = {bonus = 0.2}}
data.raw["module"]["speed-module-3"].effect = { speed = {bonus = 0.6}, consumption = {bonus = 0.3}}
data.raw["module"]["effectivity-module"].icon = "__DyTech-Modules__/graphics/icons/effectivity-module.png"
data.raw["module"]["effectivity-module-2"].icon = "__DyTech-Modules__/graphics/icons/effectivity-module-2.png"
data.raw["module"]["effectivity-module-3"].icon = "__DyTech-Modules__/graphics/icons/effectivity-module-3.png"
data.raw["module"]["effectivity-module"].effect = { consumption = {bonus = -0.25}}
data.raw["module"]["effectivity-module-2"].effect = { consumption = {bonus = -0.5}}
data.raw["module"]["effectivity-module-3"].effect = { consumption = {bonus = -0.75}}
data.raw["module"]["productivity-module"].icon = "__DyTech-Modules__/graphics/icons/productivity-module.png"
data.raw["module"]["productivity-module-2"].icon = "__DyTech-Modules__/graphics/icons/productivity-module-2.png"
data.raw["module"]["productivity-module-3"].icon = "__DyTech-Modules__/graphics/icons/productivity-module-3.png"
data.raw["module"]["productivity-module"].effect = { productivity = {bonus = 0.05}, consumption = {bonus = 0.2}, pollution = {bonus = 0.2}}
data.raw["module"]["productivity-module-2"].effect = { productivity = {bonus = 0.1}, consumption = {bonus = 0.4}, pollution = {bonus = 0.4}}
data.raw["module"]["productivity-module-3"].effect = { productivity = {bonus = 0.15}, consumption = {bonus = 0.6}, pollution = {bonus = 0.6}}
data.raw["module"]["speed-module"].subgroup = "speed-module"
data.raw["module"]["speed-module-2"].subgroup = "speed-module"
data.raw["module"]["speed-module-3"].subgroup = "speed-module"
data.raw["module"]["effectivity-module"].subgroup = "effectivity-module"
data.raw["module"]["effectivity-module-2"].subgroup = "effectivity-module"
data.raw["module"]["effectivity-module-3"].subgroup = "effectivity-module"
data.raw["module"]["productivity-module"].subgroup = "productivity-module"
data.raw["module"]["productivity-module-2"].subgroup = "productivity-module"
data.raw["module"]["productivity-module-3"].subgroup = "productivity-module"

data:extend(
{
  --[[Pollution Cleaning Modules]]--
  {
    type = "module",
    name = "pollution-clean-module-1",
    icon = "__[MAIN]DyTech-Machine/graphics/modules/pollution-clean-module-1.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "pollution-clean-module",
    order = "m-p-cl-1",
    stack_size = 50,
    effect = {pollution = {bonus = -0.2}}
  },
  {
    type = "module",
    name = "pollution-clean-module-2",
    icon = "__[MAIN]DyTech-Machine/graphics/modules/pollution-clean-module-2.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "pollution-clean-module",
    order = "m-p-cl-2",
    stack_size = 50,
    effect = {pollution = {bonus = -0.4}}
  },
  {
    type = "module",
    name = "pollution-clean-module-3",
    icon = "__[MAIN]DyTech-Machine/graphics/modules/pollution-clean-module-3.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "pollution-clean-module",
    order = "m-p-cl-3",
    stack_size = 50,
    effect = {pollution = {bonus = -0.6}}
  },
  {
    type = "module",
    name = "pollution-clean-module-4",
    icon = "__[MAIN]DyTech-Machine/graphics/modules/pollution-clean-module-4.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "pollution-clean-module",
    order = "m-p-cl-4",
    stack_size = 50,
    effect = {pollution = {bonus = -0.8}}
  },
  {
    type = "module",
    name = "pollution-clean-module-5",
    icon = "__[MAIN]DyTech-Machine/graphics/modules/pollution-clean-module-5.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "pollution-clean-module",
    order = "m-p-cl-5",
    stack_size = 50,
    effect = {pollution = {bonus = -1.0}}
  },
  {
    type = "module",
    name = "pollution-clean-module-6",
    icon = "__[MAIN]DyTech-Machine/graphics/modules/pollution-clean-module-6.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "pollution-clean-module",
    order = "m-p-cl-6",
    stack_size = 50,
    effect = {pollution = {bonus = -1.2}}
  },
  {
    type = "module",
    name = "pollution-clean-module-7",
    icon = "__[MAIN]DyTech-Machine/graphics/modules/pollution-clean-module-7.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "pollution-clean-module",
    order = "m-p-cl-7",
    stack_size = 50,
    effect = {pollution = {bonus = -1.4}}
  },
  {
    type = "module",
    name = "pollution-clean-module-8",
    icon = "__[MAIN]DyTech-Machine/graphics/modules/pollution-clean-module-8.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "pollution-clean-module",
    order = "m-p-cl-8",
    stack_size = 50,
    effect = {pollution = {bonus = -1.6}}
  },
  --[[Pollution Producing Modules]]--
  {
    type = "module",
    name = "pollution-create-module-1",
    icon = "__[MAIN]DyTech-Machine/graphics/modules/pollution-create-module-1.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "pollution-create-module",
    order = "m-p-cr-1",
    stack_size = 50,
    effect = {pollution = {bonus = 0.2}}
  },
  {
    type = "module",
    name = "pollution-create-module-2",
    icon = "__[MAIN]DyTech-Machine/graphics/modules/pollution-create-module-2.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "pollution-create-module",
    order = "m-p-cr-2",
    stack_size = 50,
    effect = {pollution = {bonus = 0.4}}
  },
  {
    type = "module",
    name = "pollution-create-module-3",
    icon = "__[MAIN]DyTech-Machine/graphics/modules/pollution-create-module-3.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "pollution-create-module",
    order = "m-p-cr-3",
    stack_size = 50,
    effect = {pollution = {bonus = 0.6}}
  },
  {
    type = "module",
    name = "pollution-create-module-4",
    icon = "__[MAIN]DyTech-Machine/graphics/modules/pollution-create-module-4.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "pollution-create-module",
    order = "m-p-cr-4",
    stack_size = 50,
    effect = {pollution = {bonus = 0.8}}
  },
  {
    type = "module",
    name = "pollution-create-module-5",
    icon = "__[MAIN]DyTech-Machine/graphics/modules/pollution-create-module-5.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "pollution-create-module",
    order = "m-p-cr-5",
    stack_size = 50,
    effect = {pollution = {bonus = 1.0}}
  },
  {
    type = "module",
    name = "pollution-create-module-6",
    icon = "__[MAIN]DyTech-Machine/graphics/modules/pollution-create-module-6.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "pollution-create-module",
    order = "m-p-cr-6",
    stack_size = 50,
    effect = {pollution = {bonus = 1.2}}
  },
  {
    type = "module",
    name = "pollution-create-module-7",
    icon = "__[MAIN]DyTech-Machine/graphics/modules/pollution-create-module-7.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "pollution-create-module",
    order = "m-p-cr-7",
    stack_size = 50,
    effect = {pollution = {bonus = 1.4}}
  },
  {
    type = "module",
    name = "pollution-create-module-8",
    icon = "__[MAIN]DyTech-Machine/graphics/modules/pollution-create-module-8.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "pollution-create-module",
    order = "m-p-cr-8",
    stack_size = 50,
    effect = {pollution = {bonus = 1.6}}
  },
  --[[Speed Modules]]--
  {
    type = "module",
    name = "speed-module-4",
    icon = "__[MAIN]DyTech-Machine/graphics/modules/speed-module-4.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "speed-module",
    order = "m-s-4",
    stack_size = 50,
    effect = { speed = {bonus = 0.8}, consumption = {bonus = 0.4}}
  },
  {
    type = "module",
    name = "speed-module-5",
    icon = "__[MAIN]DyTech-Machine/graphics/modules/speed-module-5.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "speed-module",
    order = "m-s-5",
    stack_size = 50,
    effect = { speed = {bonus = 1.0}, consumption = {bonus = 0.5}}
  },
  {
    type = "module",
    name = "speed-module-6",
    icon = "__[MAIN]DyTech-Machine/graphics/modules/speed-module-6.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "speed-module",
    order = "m-s-6",
    stack_size = 50,
    effect = { speed = {bonus = 1.2}, consumption = {bonus = 0.6}}
  },
  {
    type = "module",
    name = "speed-module-7",
    icon = "__[MAIN]DyTech-Machine/graphics/modules/speed-module-7.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "speed-module",
    order = "m-s-7",
    stack_size = 50,
    effect = { speed = {bonus = 1.4}, consumption = {bonus = 0.7}}
  },
  {
    type = "module",
    name = "speed-module-8",
    icon = "__[MAIN]DyTech-Machine/graphics/modules/speed-module-8.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "speed-module",
    order = "m-s-8",
    stack_size = 50,
    effect = { speed = {bonus = 1.6}, consumption = {bonus = 0.8}}
  },
  --[[Effectivity Modules]]--
  {
    type = "module",
    name = "effectivity-module-4",
    icon = "__[MAIN]DyTech-Machine/graphics/modules/effectivity-module-4.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "effectivity-module",
    order = "m-e-4",
    stack_size = 50,
    effect = { consumption = {bonus = -1.0}}
  },
  {
    type = "module",
    name = "effectivity-module-5",
    icon = "__[MAIN]DyTech-Machine/graphics/modules/effectivity-module-5.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "effectivity-module",
    order = "m-e-5",
    stack_size = 50,
    effect = { consumption = {bonus = -1.25}}
  },
  {
    type = "module",
    name = "effectivity-module-6",
    icon = "__[MAIN]DyTech-Machine/graphics/modules/effectivity-module-6.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "effectivity-module",
    order = "m-e-6",
    stack_size = 50,
    effect = { consumption = {bonus = -1.50}}
  },
  {
    type = "module",
    name = "effectivity-module-7",
    icon = "__[MAIN]DyTech-Machine/graphics/modules/effectivity-module-7.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "effectivity-module",
    order = "m-e-7",
    stack_size = 50,
    effect = { consumption = {bonus = -1.75}}
  },
  {
    type = "module",
    name = "effectivity-module-8",
    icon = "__[MAIN]DyTech-Machine/graphics/modules/effectivity-module-8.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "effectivity-module",
    order = "m-e-8",
    stack_size = 50,
    effect = { consumption = {bonus = -2.0}}
  },
  --[[Productivity Modules]]--
  {
    type = "module",
    name = "productivity-module-4",
    icon = "__[MAIN]DyTech-Machine/graphics/modules/productivity-module-4.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "productivity-module",
    order = "m-p-4",
    stack_size = 50,
    effect = { productivity = {bonus = 0.2}, consumption = {bonus = 0.8}, pollution = {bonus = 0.8}},
    limitation = productivitymodulelimitation(),
    limitation_message_key = "production-module-usable-only-on-intermeidates"
  },
  {
    type = "module",
    name = "productivity-module-5",
    icon = "__[MAIN]DyTech-Machine/graphics/modules/productivity-module-5.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "productivity-module",
    order = "m-p-5",
    stack_size = 50,
    effect = { productivity = {bonus = 0.25}, consumption = {bonus = 1.0}, pollution = {bonus = 1.0}},
    limitation = productivitymodulelimitation(),
    limitation_message_key = "production-module-usable-only-on-intermeidates"
  },
  {
    type = "module",
    name = "productivity-module-6",
    icon = "__[MAIN]DyTech-Machine/graphics/modules/productivity-module-6.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "productivity-module",
    order = "m-p-6",
    stack_size = 50,
    effect = { productivity = {bonus = 0.3}, consumption = {bonus = 1.2}, pollution = {bonus = 1.2}},
    limitation = productivitymodulelimitation(),
    limitation_message_key = "production-module-usable-only-on-intermeidates"
  },
  {
    type = "module",
    name = "productivity-module-7",
    icon = "__[MAIN]DyTech-Machine/graphics/modules/productivity-module-7.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "productivity-module",
    order = "m-p-7",
    stack_size = 50,
    effect = { productivity = {bonus = 0.4}, consumption = {bonus = 1.6}, pollution = {bonus = 1.6}},
    limitation = productivitymodulelimitation(),
    limitation_message_key = "production-module-usable-only-on-intermeidates"
  },
  {
    type = "module",
    name = "productivity-module-8",
    icon = "__[MAIN]DyTech-Machine/graphics/modules/productivity-module-8.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "productivity-module",
    order = "m-p-8",
    stack_size = 50,
    effect = { productivity = {bonus = 0.5}, consumption = {bonus = 2.0}, pollution = {bonus = 2.0}},
    limitation = productivitymodulelimitation(),
    limitation_message_key = "production-module-usable-only-on-intermeidates"
  },
}
)
