
local SupportedFramework = nil

if not SIX.Config.Framwork.IsCustom  then
    for name, state in pairs(SIX.Config.Framwork.Supported) do
        if state == true then
            SupportedFramework  = name
        end
    end
end

print("SIX HUD || Il tuo Framwork attuale si tratti di: " ..SupportedFramework)


RequestFramwork =  function ()
    local info = debug.getinfo(2, 'S')
    local path = info.source
    local fileName = path:match("^.+/(.+)%.lua$")

    if fileName and string.lower(fileName) == string.lower(SIX.Config.Framwork.IsCustom or SupportedFramework) then
        return true
    else
        return false    
    end
end

RequestPMAVoice = function ()
    local info = debug.getinfo(2, 'S')
    local path = info.source
    local fileName = path:match("^.+/(.+)%.lua$")

    if fileName and string.lower(fileName) == string.lower(SIX.Config.Framwork.VoiceScript) then
        return true
    else
        return false    
    end
end
