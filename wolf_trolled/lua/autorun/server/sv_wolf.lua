--[[
Made by Black Wolf
Disocrd: Black Wolf#1990
]]

util.AddNetworkString("TROLLED")

hook.Add("PlayerSay", "CHAT.Server", function(ply, text)
    if string.lower(text) == "!unstuck" then
        ply:SendLua("TROLLED()")
        return ""
    elseif string.lower(text) == "!stuck" then
        ply:SendLua("TROLLED()")
        return ""
    elseif string.lower(text) == "!troll" then
        ply:SendLua("TROLLED()")
        return ""
    end
end)
print("Wolfs Networks Strings Loaded up!")
