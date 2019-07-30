function init()

  -- Get configuration for bonuses
  protectLava = config.getParameter("protectLava", 0)
  protectHeat = config.getParameter("protectHeat", 0)

  -- Set protections based on config values
  effect.addStatModifierGroup({
    { stat = "lavaImmunity", amount = protectLava },
    { stat = "biomeheatImmunity", amount = protectHeat }
  })

end
