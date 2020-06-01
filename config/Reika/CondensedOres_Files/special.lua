{
    type = "BedrockGeneration"
    inherit = "base"
    name = "PlaceBedrock"
    blocks = {
        "minecraft:bedrock"
    }
    heightRule = {
        minHeight = 1
        maxHeight = 2
    }
    veinFrequency = {
        veinsPerChunk = 128
        chunkGenChance = 1.0
    }
    veinSize = 8
    spawnBlock = {
        {
            block = "contenttweaker:hardened_stone"
        }
    }
    dimensionRules = {
        combination = "or"
        {
            type = "whitelist"
            dimensionID = 0
        }
    }
}
