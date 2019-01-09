include("shared.lua")

function ENT:OnInitialize()
  local options = {
    StartSize = 30,
    EndSize = 22.5,
    Lifetime = 2.7,
    Color(255, 255, 255),
    Sprite = "sprites/orangecore1"
  }

  for i = 1, 5 do
    self:AddEngine(Vector(-152.5, i * 10, 407.5), options)
    self:AddEngine(Vector(-152.5, i * -10, 407.5), options)
  end
end
