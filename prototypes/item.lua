data:extend({

  {
	type = "capsule",
	name = "Caffeine-Capsule",
	icon = "__Cracktorio__/graphics/icons/Caffeine.png",
    flags = {"goes-to-quickbar"},
	subgroup = "ammo",
	capsule_action =
	{
	  type = "use-on-self",
	  attack_parameters =
	  {
	    type = "projectile",
		ammo_category = "capsule",
		cooldown = 30,
		range = 0,
		ammo_type =
		{
		  category = "capsule",
          target_type = "position",
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "instant",
              target_effects =
              {
				type = "create-entity",
				entity_name = "destroyer",
				offsets = {{0,0}},
				trigger_created_entity = true,
              }
            }
          }
		}
	  }
	},
	order = "c-d-b",
	stack_size = "10",
  },
  {
	type = "capsule",
	name = "Nicotine-Capsule",
	icon = "__Cracktorio__/graphics/icons/Nicotine.png",
    flags = {"goes-to-quickbar"},
	subgroup = "ammo",
	capsule_action =
	{
	  type = "use-on-self",
	  attack_parameters =
	  {
	    type = "projectile",
		ammo_category = "capsule",
		cooldown = 30,
		movement_slow_down_factor = 1.5,
		resistances =
		{
			type = "physical",
			decrease = 10,
			percent = 30
		},
		range = 0,
		ammo_type =
		{
		  category = "capsule",
          target_type = "position",
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "instant",
              target_effects =
              {
				type = "create-entity",
				entity_name = "destroyer",
				offsets = { { 0, 0 }},
				trigger_created_entity = true,
			  }
            }
          }
		}
	  }
	  },
	order = "c-d-b",
	stack_size = "10",
  },
  {
	type = "capsule",
	name = "Alcohol-Capsule",
	icon = "__Cracktorio__/graphics/icons/Alcohol.png",
    flags = {"goes-to-quickbar"},
	subgroup = "ammo",
	capsule_action =
	{
	  type = "use-on-self",
	  attack_parameters =
	  {
	    type = "projectile",
		ammo_category = "capsule",
		cooldown = 30,
		movement_slow_down_factor = 1.5,
		resistances =
		{
			type = "physical",
			decrease = 10,
			percent = 30
		},
		range = 0,
		ammo_type =
		{
		  category = "capsule",
          target_type = "position",
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "instant",
              target_effects =
              {
                type = "damage",
                damage = {type = "physical", amount = -20}
              }
            }
          }
		}
	  }
	  },
	order = "c-d-b",
	stack_size = "10",
  },  {
	type = "capsule",
	name = "Marijuana-Capsule",
	icon = "__Cracktorio__/graphics/icons/Weed.png",
    flags = {"goes-to-quickbar"},
	subgroup = "ammo",
	capsule_action =
	{
	  type = "use-on-self",
	  attack_parameters =
	  {
	    type = "projectile",
		ammo_category = "capsule",
		cooldown = 30,
		movement_slow_down_factor = 1.5,
		resistances =
		{
			type = "physical",
			decrease = 10,
			percent = 30
		},
		range = 0,
		ammo_type =
		{
		  category = "capsule",
          target_type = "position",
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "instant",
              target_effects =
              {
                type = "damage",
                damage = {type = "physical", amount = -20}
              }
            }
          }
		}
	  }
	  },
	order = "c-d-b",
	stack_size = "10",
  },
  {
	type = "capsule",
	name = "CINO",
	icon = "__Cracktorio__/graphics/icons/CINO Logo.png",
    flags = {"goes-to-quickbar"},
	subgroup = "ammo",
	capsule_action =
	{
	  type = "use-on-self",
	  attack_parameters =
	  {
	    type = "projectile",
		ammo_category = "capsule",
		cooldown = 30,
		movement_slow_down_factor = 1.5,
		resistances =
		{
			type = "physical",
			decrease = 10,
			percent = 30
		},
		range = 0,
		ammo_type =
		{
		  category = "capsule",
          target_type = "position",
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "instant",
              target_effects =
              {
                type = "damage",
                damage = {type = "physical", amount = -20}
              }
            }
          }
		}
	  }
	  },
	order = "c-d-b",
	stack_size = "10",
  },
  {
	type = "capsule",
	name = "Cocaine-Capsule",
	icon = "__Cracktorio__/graphics/icons/Coke.png",
    flags = {"goes-to-quickbar"},
	subgroup = "ammo",
	capsule_action =
	{
	  type = "use-on-self",
	  attack_parameters =
	  {
	    type = "projectile",
		ammo_category = "capsule",
		cooldown = 30,
		movement_slow_down_factor = 1.5,
		resistances =
		{
			type = "physical",
			decrease = 10,
			percent = 30
		},
		range = 0,
		ammo_type =
		{
		  category = "capsule",
          target_type = "position",
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "instant",
              target_effects =
              {
                type = "damage",
                damage = {type = "physical", amount = -20}
              }
            }
          }
		}
	  }
	  },
	order = "c-d-b",
	stack_size = "10",
  },
  {
	type = "capsule",
	name = "Opium-Capsule",
	icon = "__Cracktorio__/graphics/icons/Opium.png",
    flags = {"goes-to-quickbar"},
	subgroup = "ammo",
	capsule_action =
	{
	  type = "use-on-self",
	  attack_parameters =
	  {
	    type = "projectile",
		ammo_category = "capsule",
		cooldown = 30,
		movement_slow_down_factor = 1.5,
		resistances =
		{
			type = "physical",
			decrease = 10,
			percent = 30
		},
		range = 0,
		ammo_type =
		{
		  category = "capsule",
          target_type = "position",
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "instant",
              target_effects =
              {
                type = "damage",
                damage = {type = "physical", amount = -20}
              }
            }
          }
		}
	  }
	  },
	order = "c-d-b",
	stack_size = "10",
  },
  {
	type = "capsule",
	name = "Heroin-Capsule",
	icon = "__Cracktorio__/graphics/icons/Heroin.png",
    flags = {"goes-to-quickbar"},
	subgroup = "ammo",
	order = "c-d-b",
	capsule_action =
	{
	  type = "use-on-self",
	  attack_parameters =
	  {
	    type = "projectile",
		ammo_category = "capsule",
		cooldown = 30,
		movement_slow_down_factor = 1.5,
		resistances =
		{
			type = "physical",
			decrease = 10,
			percent = 30
		},
		range = 0,
		ammo_type =
		{
		  category = "capsule",
          target_type = "position",
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "instant",
              target_effects =
              {
                type = "damage",
                damage = {type = "physical", amount = -20}
              }
            }
          }
		}
	  }
	  },
	stack_size = "10",
  },
  {
	type = "capsule",
	name = "Methamphetamine-Capsule",
	icon = "__Cracktorio__/graphics/icons/Meth.png",
    flags = {"goes-to-quickbar"},
	subgroup = "ammo",
	capsule_action =
	{
	  type = "use-on-self",
	  attack_parameters =
	  {
	    type = "projectile",
		ammo_category = "capsule",
		cooldown = 30,
		movement_slow_down_factor = 1.5,
		resistances =
		{
			type = "physical",
			decrease = 10,
			percent = 30
		},
		range = 0,
		ammo_type =
		{
		  category = "capsule",
          target_type = "position",
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "instant",
              target_effects =
              {
                type = "damage",
                damage = {type = "physical", amount = -20}
              }
            }
          }
		}
	  }
	  },
	order = "c-d-b",
	stack_size = "10",
  },
  {
	type = "capsule",
	name = "MDMA-Capsule",
	icon = "__Cracktorio__/graphics/icons/MDMA.png",
    flags = {"goes-to-quickbar"},
	subgroup = "ammo",
	capsule_action =
	{
	  type = "use-on-self",
	  attack_parameters =
	  {
	    type = "projectile",
		ammo_category = "capsule",
		cooldown = 30,
		movement_slow_down_factor = 1.5,
		resistances =
		{
			type = "physical",
			decrease = 10,
			percent = 30
		},
		range = 0,
		ammo_type =
		{
		  category = "capsule",
          target_type = "position",
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "instant",
              target_effects =
              {
                type = "damage",
                damage = {type = "physical", amount = -20}
              }
            }
          }
		}
	  }
	 },
	order = "c-d-b",
	stack_size = "10",
  },
  {
	type = "capsule",
	name = "LSD-Capsule",
	icon = "__Cracktorio__/graphics/icons/LSD.png",
    flags = {"goes-to-quickbar"},
	subgroup = "ammo",
	capsule_action =
	{
	  type = "use-on-self",
	  attack_parameters =
	  {
	    type = "projectile",
		ammo_category = "capsule",
		cooldown = 30,
		movement_slow_down_factor = 1.5,
		resistances =
		{
			type = "physical",
			decrease = 10,
			percent = 30
		},
		range = 0,
		ammo_type =
		{
		  category = "capsule",
          target_type = "position",
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "instant",
              target_effects =
              {
                type = "damage",
                damage = {type = "physical", amount = -20}
              }
            }
          }
		}
	  }
	  },
	order = "c-d-b",
	stack_size = "10",
  },
  {
	type = "item",
	name = "Drug-Lab",
	icon = "__Cracktorio__/graphics/entity/druglab.png",
    flags = {"goes-to-quickbar"},
	subgroup = "ammo",
	order = "c-d-b",
	stack_size = "10",
  }
})