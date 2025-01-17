-----------------------------------
-- Area: Windurst Woods
--  NPC: Patsaa Maehoc
-- Working 100%
-----------------------------------
require("scripts/globals/pathfind")
-----------------------------------
local entity = {}

local path =
{
    { x = 0.665, y = -4.250, z = 53.641, wait = 4000 },
    { x = -5.685, y = -4.250, z = 53.831 },
    { x = -10.590, y = -4.250, z = 53.978 },
    { x = -12.900, y = -4.250, z = 54.047, wait = 4000 },
    { x = -10.590, y = -4.250, z = 53.978 },
    { x = -5.685, y = -4.250, z = 53.831 },
}

entity.onSpawn = function(npc)
    npc:initNpcAi()
    npc:setPos(xi.path.first(path))
    npc:pathThrough(path, xi.path.flag.PATROL)
end

entity.onTrade = function(player, npc, trade)
end

entity.onTrigger = function(player, npc)
    player:startEvent(427)
end

entity.onEventUpdate = function(player, csid, option)
end

entity.onEventFinish = function(player, csid, option)
end

return entity
