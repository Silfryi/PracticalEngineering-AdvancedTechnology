{
    type = "Tungsten"
    inherit = "base"
    name = "Tungsten Ore"
    blocks = {
        "Eln:Eln.Ore:5"
    }
    heightRule = {
        minHeight = 5
        maxHeight = 32
    }
    veinFrequency = {
        veinsPerChunk = 1
        chunkGenChance = 0.16
    }
    veinSize = 48
}
{
    type = "Aluminium"
    inherit = "base"
    name = "Aluminium Ore"
    blocks = {
        "ElectriCraft:electricraft_block_ore:4"
    }
    heightRule = {
        minHeight = 48
        maxHeight = 96
    }
    veinFrequency = {
        veinsPerChunk = 1
        chunkGenChance = 0.28
    }
    veinSize = 42
    dimensionRules = {
        combination = "or"
        {
            type = "blacklist"
            dimensionID = 18
        }
    }
}
{
    type = "Copper"
    inherit = "base"
    name = "Copper Ore"
    blocks = {
        "ElectriCraft:electricraft_block_ore"
    }
    heightRule = {
        minHeight = 48
        maxHeight = 72
    }
    veinFrequency = {
        veinsPerChunk = 1
        chunkGenChance = 0.45
    }
    veinSize = 48
}
{
    type = "Nickel"
    inherit = "base"
    name = "Nickel Ore"
    blocks = {
        "ElectriCraft:electricraft_block_ore:3"
    }
    heightRule = {
        minHeight = 8
        maxHeight = 38
    }
    veinFrequency = {
        veinsPerChunk = 1
        chunkGenChance = 0.16
    }
    veinSize = 36
}
{
    type = "Lead"
    inherit = "base"
    name = "Lead Ore"
    blocks = {
        "ImmersiveEngineering:ore:2"
    }
    heightRule = {
        minHeight = 6
        maxHeight = 36
    }
    veinFrequency = {
        veinsPerChunk = 1
        chunkGenChance = 0.34
    }
    veinSize = 36
}
{
    type = "Silver"
    inherit = "base"
    name = "Silver Ore"
    blocks = {
        "ElectriCraft:electricraft_block_ore:2"
    }
    heightRule = {
        minHeight = 8
        maxHeight = 32
    }
    veinFrequency = {
        veinsPerChunk = 1
        chunkGenChance = 0.19
    }
    veinSize = 48
}
{
    type = "Tin"
    inherit = "base"
    name = "Tin Ore"
    blocks = {
        "ElectriCraft:electricraft_block_ore:1"
    }
    heightRule = {
        minHeight = 40
        maxHeight = 73
    }
    veinFrequency = {
        veinsPerChunk = 1
        chunkGenChance = 0.32
    }
    veinSize = 40
    dimensionRules = {
        combination = "or"
        {
            type = "blacklist"
            dimensionID = 18
        }
    }
}
{
    type = "Certus Quartz"
    inherit = "base"
    name = "Certus Quartz Ore"
    blocks = {
        "appliedenergistics2:tile.OreQuartz"
    }
    heightRule = {
        minHeight = 48
        maxHeight = 80
    }
    veinFrequency = {
        veinsPerChunk = 1
        chunkGenChance =  0.24
    }
    veinSize = 40
}
{
    type = "Charged Certus Quartz"
    inherit = "base"
    name = "Charged Certus Quartz Ore"
    blocks = {
        "appliedenergistics2:tile.OreQuartzCharged"
    }
    heightRule = {
        minHeight = 48
        maxHeight = 80
    }
    veinFrequency = {
        veinsPerChunk = 1
        chunkGenChance = 0.08
    }
    veinSize = 24
}
{
    type = "Calcite"
    inherit = "base"
    name = "Calcite Ore"
    blocks = {
        "ReactorCraft:reactorcraft_block_ore:7"
    }
    heightRule = {
        minHeight = 40
        maxHeight = 64
    }
    veinFrequency = {
        veinsPerChunk = 1
        chunkGenChance = 0.1875
    }
    veinSize = 48
    biomeRules = {
        combination = "and"
        {
            type = "exclude"
            biomeID = 110
        }
        {
            type = "exclude"
            biomeID = 112
        }
        {
            type = "exclude"
            biomeID = 115
        }
        {
            type = "exclude"
            biomeID = 119
        }
    }
}
{
    type = "End Pitchblende"
    inherit = "base"
    name = "End Pitchblende Ore"
    blocks = {
        "ReactorCraft:reactorcraft_block_ore:5"
    }
    heightRule = {
        minHeight = 5
        maxHeight = 64
    }
    veinFrequency = {
        veinsPerChunk = 1
        chunkGenChance = 0.75
    }
    veinSize = 80
    spawnBlock = {
        {
            block = "minecraft:end_stone"
        }
    }
    dimensionRules = {
        combination = "or"
        {
            type = "blacklist"
            dimensionID = 0
        }
    }
}
{
    type = "Pitchblende"
    inherit = "base"
    name = "Pitchblende Ore"
    blocks = {
        "ReactorCraft:reactorcraft_block_ore:1"
    }
    heightRule = {
        minHeight = 8
        maxHeight = 24
    }
    veinFrequency = {
        veinsPerChunk = 1
        chunkGenChance = 0.15625
    }
    veinSize = 80
    biomeRules = {
        combination = "or"
        {
            type = "dictionary-require"
            name = "Mushroom"
        }
        {
            type = "dictionary-require"
            name = "River"
        }
        {
            type = "dictionary-require"
            name = "Ocean"
        }
    }
}
{
    type = "Indium" --Just to stop ReC Cadmium from spawning outside of asteroid scatter
    inherit = "base"
    name = "Indium Ore"
    blocks = {
        "ReactorCraft:reactorcraft_block_ore:3"
    }
    heightRule = {
        minHeight = 0
        maxHeight = 1
    }
    veinFrequency = {
        veinsPerChunk = 1
        chunkGenChance = 0.001
    }
    veinSize = 1
}
{
    type = "Cadmium"  --Just to stop ReC Indium from spawning outside of asteroids
    inherit = "base"
    name = "Cadmium Ore"
    blocks = {
        "ReactorCraft:reactorcraft_block_ore:2"
    }
    heightRule = {
        minHeight = 0
        maxHeight = 1
    }
    veinFrequency = {
        veinsPerChunk = 1
        chunkGenChance = 0.001
    }
    veinSize = 1
}
{
    type = "Magnetite"
    inherit = "base"
    name = "Magnetite Ore"
    blocks = {
        "ReactorCraft:reactorcraft_block_ore:8"
    }
    heightRule = {
        minHeight = 48
        maxHeight = 112
    }
    veinFrequency = {
        veinsPerChunk = 1
        chunkGenChance = 0.25
    }
    veinSize = 72
}
{
    type = "Thorite"
    inherit = "base"
    name = "Thorite Ore"
    blocks = {
        "ReactorCraft:reactorcraft_block_ore:9"
    }
    heightRule = {
        minHeight = 5
        maxHeight = 32
    }
    veinFrequency = {
        veinsPerChunk = 1
        chunkGenChance = 0.01
    }
    veinSize = 96
    spawnBlock = {
        {
            block = "minecraft:netherrack"
        }
    }
    dimensionRules = {
        combination = "or"
        {
            type = "blacklist"
            dimensionID = 0
        }
    }
}
{
    type = "Fluorite"
    inherit = "base"
    name = "Fluorite"
    blocks = {
        "ReactorCraft:reactorcraft_block_fluoriteore:0"
        "ReactorCraft:reactorcraft_block_fluoriteore:1"
        "ReactorCraft:reactorcraft_block_fluoriteore:2"
        "ReactorCraft:reactorcraft_block_fluoriteore:3"
        "ReactorCraft:reactorcraft_block_fluoriteore:4"
        "ReactorCraft:reactorcraft_block_fluoriteore:5"
        "ReactorCraft:reactorcraft_block_fluoriteore:6"
        "ReactorCraft:reactorcraft_block_fluoriteore:7"
    }
    heightRule = {
        minHeight = 48
        maxHeight = 96
    }
    veinFrequency = {
        veinsPerChunk = 1
        chunkGenChance = 0.25
    }
    veinSize = 60
    biomeRules = {
        combination = "and"
        {
            type = "exclude"
            biomeID = 110
        }
        {
            type = "exclude"
            biomeID = 112
        }
        {
            type = "exclude"
            biomeID = 115
        }
        {
            type = "exclude"
            biomeID = 119
        }
    }
}
{
    type = "Coal"
    inherit = "base"
    name = "Coal Ore"
    blocks = {
        "minecraft:coal_ore"
    }
    heightRule = {
        minHeight = 16
        maxHeight = 112
    }
    veinFrequency = {
        veinsPerChunk = 1
        chunkGenChance = 0.4
    }
    veinSize = 72
    biomeRules = {
        combination = "and"
        {
            type = "exclude"
            biomeID = 110
        }
        {
            type = "exclude"
            biomeID = 112
        }
        {
            type = "exclude"
            biomeID = 115
        }
        {
            type = "exclude"
            biomeID = 119
        }
    }
}
{
    type = "Platinum"
    inherit = "base"
    name = "Platinum Ore"
    blocks = {
        "ElectriCraft:electricraft_block_ore:5"
    }
    heightRule = {
        minHeight = 0
        maxHeight = 1
    }
    veinFrequency = {
        veinsPerChunk = 1
        chunkGenChance = 0.001
    }
    veinSize = 1
}
{
    type = "Gold"
    inherit = "base"
    name = "Gold Ore"
    blocks = {
        "minecraft:gold_ore"
    }
    heightRule = {
        minHeight = 5
        maxHeight = 40
    }
    veinFrequency = {
        veinsPerChunk = 1
        chunkGenChance =  0.0625
    }
    veinSize = 36
}
{
    type = "Lapis Lazuli"
    inherit = "base"
    name = "Lapis Lazuli Ore"
    blocks = {
        "minecraft:lapis_ore"
    }
    heightRule = {
        minHeight = 8
        maxHeight = 20
        variation = "normal"
    }
    veinFrequency = {
        veinsPerChunk = 1
        chunkGenChance = 0.01
    }
    veinSize = 36
}
{
    type = "Nether Quartz"
    inherit = "base"
    name = "Nether Quartz Ore"
    blocks = {
        "minecraft:quartz_ore"
    }
    heightRule = {
        minHeight = 10
        maxHeight = 108
    }
    veinFrequency = {
        veinsPerChunk = 1
        chunkGenChance = 0.625
    }
    veinSize = 90
    spawnBlock = {
        {
            block = "minecraft:netherrack"
        }
    }
    dimensionRules = {
        combination = "or"
        {
            type = "blacklist"
            dimensionID = 0
        }
    }
}
{
    type = "Emerald"
    inherit = "base"
    retrogen = "true"
    name = "Emerald Ore"
    blocks = {
        "minecraft:emerald_ore"
    }
    heightRule = {
        minHeight = 4
        maxHeight = 32
    }
    veinFrequency = {
        veinsPerChunk = 1.0
        chunkGenChance = 0.3
    }
    veinSize = 18
    biomeRules = {
        combination = "and"
        {
            type = "dictionary-require"
            name = "Mountain"
        }
    }
}
{
    type = "Redstone"
    inherit = "base"
    name = "Redstone Ore"
    blocks = {
        "minecraft:redstone_ore"
    }
    heightRule = {
        minHeight = 5
        maxHeight = 16
    }
    veinFrequency = {
        veinsPerChunk = 1
        chunkGenChance = 0.25
    }
    veinSize = 48
}
{
    type = "Iron"
    inherit = "base"
    name = "Iron Ore"
    blocks = {
        "minecraft:iron_ore"
    }
    heightRule = {
        minHeight = 5
        maxHeight = 48
    }
    veinFrequency = {
        veinsPerChunk = 1
        chunkGenChance = 0.32
    }
    veinSize = 48
}
{
    type = "HighCommon"
    inherit = "base"
    name = "Common High Ores"
    blocks = {
        "minecraft:coal_ore"
        "ElectriCraft:electricraft_block_ore"
        "ElectriCraft:electricraft_block_ore:1"
    }
    heightRule = {
        minHeight = 72
        maxHeight = 160
    }
    veinFrequency = {
        veinsPerChunk = 1
        chunkGenChance = 0.5
    }
    veinSize = 36
}
{
    type = "HighMiddle"
    inherit = "base"
    name = "Middle High Ores"
    blocks = {
        "minecraft:iron_ore"
        "ElectriCraft:electricraft_block_ore:4"
    }
    heightRule = {
        minHeight = 72
        maxHeight = 160
    }
    veinFrequency = {
        veinsPerChunk = 1
        chunkGenChance = 0.25
    }
    veinSize = 24
}
{
    type = "HighRare"
    inherit = "base"
    name = "Rare High Ores"
    blocks = {
        "minecraft:emerald_ore"
    }
    heightRule = {
        minHeight = 72
        maxHeight = 160
    }
    veinFrequency = {
        veinsPerChunk = 1
        chunkGenChance = 0.05
    }
    veinSize = 18
}
