hl.monitor({ output = "desc:Dell Inc. DELL U4320Q JJZXV13", mode = "preferred", position = "0x0", scale = 1 })
hl.monitor({ output = "desc:WAM PX275h", mode = "2560x1440@95.00Hz", position = "3840x720", scale = 1 })
hl.monitor({ output = "desc:Ancor Communications Inc ASUS VN248 EALMTF093141", mode = "preferred", position = "3840x-360", scale = 1 })
hl.monitor({ output = "", position = "auto" })

for _, m in ipairs(hl.get_monitors()) do
  local monitor_offset = m.id * 10
  for i = 1, 10 do 
    local monitor_default
    if (i == 1) then monitor_default = true
    else monitor_default = false end

    hl.workspace_rule({ workspace = tostring(monitor_offset + i), monitor = m.name, default = monitor_default, persistent = true })
  end
end
--hl.workspace_rule({ workspace = "1", monitor = "desc:Dell Inc. DELL U4320Q JJZXV13", border_size = 20 })

-- for i = 1, 10 do
  -- hl.workspace_rule({ workspace = tostring(i), monitor = "desc:Dell Inc. DELL U4320Q JJZXV13" })
-- end

-- for i = 1, 10 do
  -- hl.workspace_rule({ workspace = tostring(10 + i), monitor = "desc:WAM PX275h" })
-- end

-- for i = 1, 10 do
  -- hl.workspace_rule({ workspace = tostring(20 + i), monitor = "desc:Ancor Communications Inc ASUS VN248 EALMTF093141" })
-- end

-- hl.workspace_rule({ workspace = "1", monitor = "desc:Dell Inc. DELL U4320Q JJZXV13" })
-- hl.workspace_rule({ workspace = "2", monitor = "desc:WAM PX275h" })
-- hl.workspace_rule({ workspace = "3", monitor = "desc:Ancor Communications Inc ASUS VN248 EALMTF093141" })
