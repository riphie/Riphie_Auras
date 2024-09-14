local _, L = ...
local cfg = L.cfg

BuffFrame:ClearAllPoints()
BuffFrame:SetPoint(cfg.buffs.pos.a1, cfg.buffs.pos.rel, cfg.buffs.pos.a2, cfg.buffs.pos.x, cfg.buffs.pos.y)
BuffFrame.__SetPoint = BuffFrame.SetPoint

hooksecurefunc(BuffFrame, "SetPoint", function()
  BuffFrame:ClearAllPoints()
  BuffFrame:__SetPoint(cfg.buffs.pos.a1, cfg.buffs.pos.rel, cfg.buffs.pos.a2, cfg.buffs.pos.x, cfg.buffs.pos.y)
end)

DebuffFrame:ClearAllPoints()
DebuffFrame:SetPoint(cfg.debuffs.pos.a1, cfg.debuffs.pos.rel, cfg.debuffs.pos.a2, cfg.debuffs.pos.x, cfg.debuffs.pos.y)
DebuffFrame.__SetPoint = BuffFrame.SetPoint

hooksecurefunc(DebuffFrame, "SetPoint", function()
  DebuffFrame:ClearAllPoints()
  DebuffFrame:__SetPoint(
    cfg.debuffs.pos.a1,
    cfg.debuffs.pos.rel,
    cfg.debuffs.pos.a2,
    cfg.debuffs.pos.x,
    cfg.debuffs.pos.y
  )
end)
