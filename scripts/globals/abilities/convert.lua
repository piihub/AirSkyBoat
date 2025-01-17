-----------------------------------
-- Ability: Convert
-- Swaps current HP with MP.
-- Obtained: Red Mage Level 40
-- Recast Time: 10:00
-- Duration: Instant
-----------------------------------
require("scripts/globals/job_utils/red_mage")
-----------------------------------
local ability_object = {}

ability_object.onAbilityCheck = function(player, target, ability)
    if player:getMP() > 0 then
        return 0, 0
    else
        return xi.msg.basic.CANNOT_PERFORM, 0
    end
end

ability_object.onUseAbility = function(player, target, ability)
    xi.job_utils.red_mage.useConvert(player, target, ability)
end

return ability_object
