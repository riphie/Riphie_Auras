BuffFrame:ClearAllPoints()
BuffFrame:SetPoint("TOPRIGHT", UIParent, "TOPRIGHT", -220, -24)
BuffFrame.__SetPoint = BuffFrame.SetPoint

hooksecurefunc(BuffFrame, "SetPoint", function()
  BuffFrame:ClearAllPoints()
  BuffFrame:__SetPoint("TOPRIGHT", UIParent, "TOPRIGHT", -220, -24)
end)

DebuffFrame:ClearAllPoints()
DebuffFrame:SetPoint("TOPRIGHT", UIParent, "TOPRIGHT", -240, -200)
DebuffFrame.__SetPoint = BuffFrame.SetPoint

hooksecurefunc(DebuffFrame, "SetPoint", function()
  DebuffFrame:ClearAllPoints()
  DebuffFrame:__SetPoint("TOPRIGHT", UIParent, "TOPRIGHT", -240, -200)
end)
