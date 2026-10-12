-- hostname function from https://stackoverflow.com/questions/73511753/device-depending-neovim-configuration
function get_hostname()
  local f = io.popen("/bin/hostname")
  local hostname = f:read("*a") or ""
  f:close()
  hostname =string.gsub(hostname, "\n$", "")
  return hostname
end
