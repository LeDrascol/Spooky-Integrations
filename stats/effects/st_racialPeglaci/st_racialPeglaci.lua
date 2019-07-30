function init()

  -- Get configuration for bonuses
  protectCold = config.getParameter("protectCold", 1)

  -- Set protections based on config values
  effect.addStatModifierGroup({
    { stat = "biomecoldImmunity", amount = protectCold }
  })

end
