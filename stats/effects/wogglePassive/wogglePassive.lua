function init()

  -- Get configurations for biome protection
   protectAir = config.getParameter("statAir", 0)
  protectCold = config.getParameter("statCold", 0)
  protectHeat = config.getParameter("statHeat", 0)
  protectRads = config.getParameter("statRads", 0)

  -- Set protections based on config values
  effect.addStatModifierGroup({
    {stat = "breathProtection", amount = protectAir},
    {stat = "biomecoldImmunity", amount = protectCold},
    {stat = "biomeheatImmunity", amount = protectHeat},
    {stat = "biomeradiationImmunity", amount = protectRads}
  })

  -- Mouth?
  status.setStatusProperty("mouthPosition", {0, -0.20})

  -- Don't update
  script.setUpdateDelta(0)
end
