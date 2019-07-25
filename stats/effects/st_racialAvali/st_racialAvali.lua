function init()

  -- Get configuration for bonuses
  multFalling = config.getParameter("multFalling", 0)
  protectCold = config.getParameter("protectCold", 1)

  -- Set protections based on config values
  effect.addStatModifierGroup({
    { stat = "fallDamageMultiplier", effectiveMultiplier = multFalling },
    { stat = "biomecoldImmunity", amount = protectCold }
  })

end
