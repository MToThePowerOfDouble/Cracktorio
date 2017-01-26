--require ("prototypes.entity.demo-gunshot-sounds")

data:extend({
  {
	type = "recipe",
	name = "Caffeine-Capsule",
	enabled = "true",
	ingredients =
	{
	 -- {"gas-carbon-dioxide",8},
	 -- {"gas-hydrogen",10},
	 -- {"gas-nitrogen-dioxide",5},
	 -- {"empty-canister",1}
	    {"iron-plate",1}
	},
	result = "Caffeine-Capsule"
  }
--[[  {
	type = "recipe",
	name = "Nicotine-Capsule",
	enabled = "true",
	ingredients =
	{
	  {"gas-carbon-dioxide",10},
	  {"gas-hydrogen",14},
	  {"gas-nitrogen",2}
	},
	result = "Nicotine-Capsule"
  },
  {
	type = "recipe",
	name = "Alcohol-Capsule",
	enabled = "true",
	ingredients =
	{
	  {"gas-carbon-dioxide",2},
	  {"gas-hydrogen",60},
	  {"empty-barrel",1}
	},
	result = "Alcohol-Capsule"
  },
  {
	type = "recipe",
	name = "Marijuana-Capsule",
	enabled = "true",
	ingredients =
	{
	  {"gas-carbon-dioxide",21},
	  {"gas-hydrogen",30},
	  {"gas-oxygen",2},
	  {"resin",5},
	  {"wood",1}
	},
	result = "Marijuana-Capsule"
  },
  {
	type = "recipe",
	name = "CINO-Capsule",
	enabled = "true",
	ingredients =
	{
	  {"gas-nitrogen-dioxide",2},
	  {"gas-clorine",5}
	},
	result = "CINO-Capsule"
  },
  {
	type = "recipe",
	name = "Cocaine-Capsule",
	enabled = "true",
	ingredients =
	{
	  {"gas-carbon-dioxide",17},
	  {"gas-hydrogen",22},
	  {"CINO",4}
	},
	result = "Cocaine-Capsule"
  },
  {
	type = "recipe",
	name = "Opium-Capsule",
	enabled = "true",
	ingredients =
	{
	  {"glass",1},
	  {"Caffeine-Capsule",3},
	  {"seedling",9},
	  {"Alcohol-Capsule",1},
	  {"empty-barrel",1}
	},
	result = "Opium-Capsule"
  },
  {
	type = "recipe",
	name = "Heroin-Capsule",
	enabled = "true",
	ingredients =
	{
	  {"gas-carbon-dioxide",21},
	  {"gas-hydrogen",23},
	  {"gas-nitrogen-dioxide",5}
	},
	result = "Heroin-Capsule"
  },
  {
	type = "recipe",
	name = "Methamphetamine-Capsule",
	enabled = "true",
	ingredients =
	{
	  {"gas-carbon-dioxide",10},
	  {"gas-hydrogen",15},
	  {"gas-nitrogen",1}
	},
	result = "Methamphetamine-Capsule"
  },
  {
	type = "recipe",
	name = "MDMA-Capsule",
	enabled = "true",
	ingredients =
	{
	  {"gas-carbon-dioxide",11},
	  {"gas-hydrogen",15},
	  {"gas-nitrogen-dioxide",2}
	},
	result = "MDMA-Capsule"
  },
  {
	type = "recipe",
	name = "LSD-Capsule",
	enabled = "true",
	ingredients =
	{
	  {"gas-carbon-dioxide",20},
	  {"gas-hydrogen",25},
	  {"gas-nitrogen-dioxide",3}
	},
	result = "LSD-Capsule"
  },
  {
	type = "recipe",
	name = "Drug-Lab",
	enabled = "true",
	ingredients =
	{
	  {"iron",20},
	  {"glass",20}
	},
	result = "Drug-Lab"
  }]]
})