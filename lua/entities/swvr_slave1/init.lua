AddCSLuaFile("shared.lua")
AddCSLuaFile("cl_init.lua")

include("shared.lua")

function ENT:OnInitialize()
  self:SetupDefaults()
end

function ENT:PrimaryAttack()
  if self:GetNextPrimaryFire() > CurTime() then return end

  self:SetNextPrimaryFire(CurTime() + 0.1)

  self:EmitSound( "AWING_FIRE1" )

  for _, name in ipairs({"FrontL", "FrontR"}) do
    self:FireWeapon(name)
  end
end

function ENT:SecondaryAttack()
  if self:GetNextSecondaryFire() > CurTime() then return end

  self:SetNextSecondaryFire(CurTime() + 0.45)
end
