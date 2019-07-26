function init()

  -- Get configuration for bonuses
  multFalling = config.getParameter("multFalling", 1)
  protectHeat = config.getParameter("protectHeat", 0)

  -- Set protections based on config values
  effect.addStatModifierGroup({
    { stat = "fallDamageMultiplier", effectiveMultiplier = multFalling },
    { stat = "biomeheatImmunity", amount = protectHeat }
  })

end
