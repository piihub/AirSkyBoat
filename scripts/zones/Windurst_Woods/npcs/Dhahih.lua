-----------------------------------
-- Area: Windurst Woods
--  NPC: Dhahih
-- Nonstandard Moving NPC
-----------------------------------
require("scripts/globals/pathfind")
-----------------------------------
local entity = {}

local path =
{
    { x = 6.110, y = 0.000, z = 122.311, wait = 8000 },
    { x = 15.913, z = 111.901 },
    { x = 20.867, z = 106.642, wait = 8000 },
    { x = 15.913, z = 111.901 },
}

entity.onSpawn = function(npc)
    npc:initNpcAi()
    npc:setPos(xi.path.first(path))
    npc:pathThrough(path, xi.path.flag.PATROL)
end

entity.onTrade = function(player, npc, trade)
end

entity.onTrigger = function(player, npc)
end

entity.onEventUpdate = function(player, csid, option)
end

entity.onEventFinish = function(player, csid, option)
end

return entity
