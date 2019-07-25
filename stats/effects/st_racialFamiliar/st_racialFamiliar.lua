function init()

  -- Get configuration for energy bonus
  bonusEnergy = config.getParameter("energyBoost", 1)

  -- Set bonus based on config values
  effect.addStatModifierGroup( { {stat = "maxEnergy", effectiveMultiplier = bonusEnergy } } )

end
