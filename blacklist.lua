PLUGIN.name = "Blacklist"
PLUGIN.author = "Dobytchick, Frosty"
PLUGIN.description = "This plugin dds a blacklist. Do not remove those who are in it, because they can harm your servers"

local blacklist =
{
-- ["STEAM_0:0:000000000"] = {reason =     ""},
}
if SERVER then
	function PLUGIN:PlayerAuthed(client, steamid, uniqueid)
		if blacklist[client:SteamID()] then
			client:Kick("You are on the blackist of the server, reason:" ..blacklist[client:SteamID()].reason)
			client:Ban(0, false)
		end
	end
end
