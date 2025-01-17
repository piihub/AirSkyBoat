-----------------------------------
-- Area: Chamber of Oracles
--  Mob: Blizzard Wyvern
-- KSNM: Eye of the Storm
-----------------------------------
require("scripts/globals/status")
-----------------------------------
local entity = {}

entity.onMobSpawn = function(mob)
    mob:setMobMod(xi.mobMod.SIGHT_RANGE, 17)
    mob:setMod(xi.mod.LULLABYRES, 80)
    mob:setMod(xi.mod.SLEEPRES, 80)
end

entity.onMobEngaged = function(mob, target)
    mob:useMobAbility(815)
    mob:setMod(xi.mod.REGAIN, 100)
end

entity.onMobFight = function(mob, target)
end

entity.onMobDeath = function(mob, player, isKiller)
end

return entity
