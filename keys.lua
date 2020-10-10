local WhitelistedIP = {
    "46.197.116.90"
}
local IP = game:HttpGet("https://api.ipify.org")
if table.find(WhitelistedIP,IP) then
--if whitelisted
else
--if not whitelisted
end