{
    type = "Aluminium"
    inherit = "base"
    name = "Aluminium Ore"
    blocks = {
        "ElectriCraft:electricraft_block_ore:4"
    }
    veinFrequency = {
        veinsPerChunk = 1
        chunkGenChance = 0.00001
    }
    veinSize = 1
}
{
    type = "Copper"
    inherit = "base"
    name = "Copper Ore"
    blocks = {
        "ElectriCraft:electricraft_block_ore"
    }
    veinFrequency = {
        veinsPerChunk = 1
        chunkGenChance = 0.00001
    }
    veinSize = 1
}
{
    type = "Nickel"
    inherit = "base"
    name = "Nickel Ore"
    blocks = {
        "ElectriCraft:electricraft_block_ore:3"
    }
    veinFrequency = {
        veinsPerChunk = 1
        chunkGenChance = 0.00001
    }
    veinSize = 1
}
{
    type = "Silver"
    inherit = "base"
    name = "Silver Ore"
    blocks = {
        "ElectriCraft:electricraft_block_ore:2"
    }
    veinFrequency = {
        veinsPerChunk = 1
        chunkGenChance = 0.00001
    }
    veinSize = 1
}
{
    type = "Tin"
    inherit = "base"
    name = "Tin Ore"
    blocks = {
        "ElectriCraft:electricraft_block_ore:1"
    }
    veinFrequency = {
        veinsPerChunk = 1
        chunkGenChance = 0.00001
    }
    veinSize = 1
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
    veinFrequency = {
        veinsPerChunk = 1
        chunkGenChance = 0.00001
    }
    veinSize = 1
}
{
    type = "Indium" --Just to stop ReC Cadmium from spawning outside of asteroid scatter
    inherit = "base"
    name = "Indium Ore"
    blocks = {
        "ReactorCraft:reactorcraft_block_ore:3"
    }
    veinFrequency = {
        veinsPerChunk = 1
        chunkGenChance = 0.00001
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
    veinFrequency = {
        veinsPerChunk = 1
        chunkGenChance = 0.00001
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
    veinFrequency = {
        veinsPerChunk = 1
        chunkGenChance = 0.00001
    }
    veinSize = 1
}
{
    type = "Thorite"
    inherit = "base"
    name = "Thorite Ore"
    blocks = {
        "ReactorCraft:reactorcraft_block_ore:9"
    }
    veinFrequency = {
        veinsPerChunk = 1
        chunkGenChance = 0.00001
    }
    veinSize = 1
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
    veinFrequency = {
        veinsPerChunk = 1
        chunkGenChance = 0.00001
    }
    veinSize = 1
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
        chunkGenChance = 0.00001
    }
    veinSize = 1
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
