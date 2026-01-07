local GameInformation = loadstring(game:HttpGet("https://raw.githubusercontent.com/MatchaExternal/zee-hood-ac/refs/heads/main/game%20info%20fetch.luau", true))()
if not GameInformation.Name:find("Zee Hood") then return end
loadstring(game:HttpGet("https://raw.githubusercontent.com/MatchaExternal/zee-hood-ac/refs/heads/main/adonis.luau", true))()
local Namecall; Namecall = hookmetamethod(game, "__namecall", function(...)
    if checkcaller() then return Namecall(...) end
    local Arguments = {...}
    local Self = Arguments[1]
    local Method = getnamecallmethod()
    local CallingScript = getcallingscript()
    
    if Method == "FireServer" and Self.Name == "MainRemoteEvent" then
        if Arguments[2] == "Detection" then
            return coroutine.yield()
        elseif Arguments[2] == "StompXD" then
            Arguments[3] = true
            return Namecall(unpack(Arguments))
        end
    end
    
    return Namecall(...)
end)
