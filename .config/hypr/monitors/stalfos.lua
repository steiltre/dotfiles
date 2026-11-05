hl.monitor({ output = "eDP-1", mode = "preferred", position = "0x0", scale = 1.6 })
hl.monitor({ output = "", position = "auto" })

hl.bind(mainMod .. " + ALT + H", function()
  hl.monitor({ output = "", position = "auto-left" })
end)
hl.bind(mainMod .. " + ALT + L", function()
  hl.monitor({ output = "", position = "auto-right" })
end)
hl.bind(mainMod .. " + ALT + J", function()
  hl.monitor({ output = "", position = "auto-down" })
end)
hl.bind(mainMod .. " + ALT + K", function()
  hl.monitor({ output = "", position = "auto-up" })
end)

for _, m in ipairs(hl.get_monitors()) do
  local monitor_offset = m.id * 10
  for i = 1, 10 do 
    local monitor_default
    if (i == 1) then monitor_default = true
    else monitor_default = false end

    hl.workspace_rule({ workspace = tostring(monitor_offset + i), monitor = m.name, default = monitor_default, persistent = true })
  end
end

hl.on("monitor.added", function(m)
  -- hl..dsp.reload_config() will be added in a future hyprland release
  -- hl.dsp.reload_config()
  hl.dsp.exec_cmd("hyprctl reload")
end)

hl.on("monitor.removed", function(m)
  -- hl.dispatch(hl.dsp.reload_config())
  hl.dsp.exec_cmd("hyprctl reload")
end)
