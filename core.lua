local A, L = ...
local cfg = L.cfg

local buffFrame = CreateFrame("Frame", "Riphie_BuffFrame", UIParent)

local bSetPoint = buffFrame.SetPoint
local bClearAllPoints = buffFrame.ClearAllPoints

bClearAllPoints(BuffFrame)
bSetPoint(BuffFrame)

hooksecurefunc(BuffFrame, "SetPoint", function(frame)
  bClearAllPoints(frame)
  bSetPoint(frame, "TOPRIGHT", buffFrame, "TOPRIGHT")
end)

buffFrame:SetPoint(cfg.buffs.pos.a1, cfg.buffs.pos.rel, cfg.buffs.pos.a2, cfg.buffs.pos.x, cfg.buffs.pos.y)

local debuffFrame = CreateFrame("Frame", "Riphie_BuffFrame", UIParent)

local dSetPoint = debuffFrame.SetPoint
local dClearAllPoints = debuffFrame.ClearAllPoints

dClearAllPoints(DebuffFrame)
dSetPoint(DebuffFrame)

hooksecurefunc(DebuffFrame, "SetPoint", function(frame)
  dClearAllPoints(frame)
  dSetPoint(frame, "TOPRIGHT", debuffFrame, "TOPRIGHT")
end)

buffFrame:SetPoint(cfg.debuffs.pos.a1, cfg.debuffs.pos.rel, cfg.debuffs.pos.a2, cfg.debuffs.pos.x, cfg.debuffs.pos.y)
