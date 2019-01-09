ENT.Type = "anim"
ENT.Base = "swvr_base"

DEFINE_BASECLASS("swvr_base")

ENT.PrintName = "Slave I"
ENT.Author = "Doctor Jew"
ENT.Information = ""
ENT.Category = "Independent"
ENT.Class = "Transport"

ENT.Spawnable = false
ENT.AdminSpawnable = false

ENT.Model = Model("models/firespray/firespray1.mdl")

ENT.SpawnHeight = 175

ENT.LandAngles = Angle(-90, 0, 0)
ENT.TakeoffVector = Vector(0, 0, 300)

ENT.Mass = 5000
ENT.Inertia = Vector(900000, 900000, 900000)

ENT.Controls = {
  Elevator = Vector(-410, 0, 380),
  Rudder = Vector(-410, 0, 380),
  Wings = Vector(120.47, 0, 370),
  Thrust = Vector(20, 0, 390)
}

ENT.Handling = Vector(800, 600, 200)

ENT.MaxPower = 50000

ENT.MaxThrust = 2800
ENT.BoostThrust = 3000

ENT.MaxVelocity = 3000

ENT.MaxHealth = 1500
ENT.MaxShield = 800

ENT.Settings = {
  Engine = {
    Sprite = "effects/muzzleflash2",
    Type = 2,
    Glow = true,
    Color = Color(255, 175, 0)
  }
}

ENT.Parts = {}

ENT.Seats = {
  ["Pilot"] = {
    Pos = Vector(10, 0, 400),
    Ang = Angle(0, -90, 0),
    Options = {
      ViewDistance = 0.75
    }
  }
}

ENT.Sounds = {
  Engine = "YWING_ENGINE"
}

sound.Add({
  name = "AWING_FIRE1",
  channel = CHAN_WEAPON,
  volume = 1.0,
  level = 125,
  pitch = { 95, 105 },
  sound = "swvr/weapons/swvr_rg9_fire.wav"
})
