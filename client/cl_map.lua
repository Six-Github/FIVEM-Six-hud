AddEventHandler("playerSpawned", function ()
    CreateThread(function()
        Wait(50)
        local defaultAspectRatio = 1920/1080
        local resolutionX, resolutionY = GetActiveScreenResolution()
        local aspectRatio = resolutionX/resolutionY
        local minimapOffset = 0
        if aspectRatio > defaultAspectRatio then
            minimapOffset = ((defaultAspectRatio-aspectRatio)/3.6)-0.008
        end
        local minimap = RequestScaleformMovie("minimap")
        RequestStreamedTextureDict("squaremap", false)
        if not HasStreamedTextureDictLoaded("squaremap") then
            Wait(100) 
        end
        SetMinimapClipType(0)
        AddReplaceTexture("platform:/textures/graphics", "radarmasksm", "squaremap", "radarmasksm")
        AddReplaceTexture("platform:/textures/graphics", "radarmask1g", "squaremap", "radarmasksm")
        SetMinimapComponentPosition("minimap", "L", "B", 0.0 + minimapOffset, -0.047, 0.1638, 0.183)
    
        SetMinimapComponentPosition("minimap_mask", "L", "B", 0.0 + minimapOffset, 0.0, 0.128, 0.20)
    
        SetMinimapComponentPosition('minimap_blur', 'L', 'B', -0.01 + minimapOffset, 0.025, 0.262, 0.300)
        SetBlipAlpha(GetNorthRadarBlip(), 0)
        SetRadarBigmapEnabled(true, false)
        SetMinimapClipType(0)
        Wait(50)
        SetRadarBigmapEnabled(false, false)
        DisplayRadar(false)
    
    end)
end)


AddEventHandler('onResourceStart', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
      return
    end
    
    CreateThread(function()
        Wait(50)
        local defaultAspectRatio = 1920/1080
        local resolutionX, resolutionY = GetActiveScreenResolution()
        local aspectRatio = resolutionX/resolutionY
        local minimapOffset = 0
        if aspectRatio > defaultAspectRatio then
            minimapOffset = ((defaultAspectRatio-aspectRatio)/3.6)-0.008
        end
        local minimap = RequestScaleformMovie("minimap")
        RequestStreamedTextureDict("squaremap", false)
        if not HasStreamedTextureDictLoaded("squaremap") then
            Wait(100) 
        end
        SetMinimapClipType(0)
        AddReplaceTexture("platform:/textures/graphics", "radarmasksm", "squaremap", "radarmasksm")
        AddReplaceTexture("platform:/textures/graphics", "radarmask1g", "squaremap", "radarmasksm")
        SetMinimapComponentPosition("minimap", "L", "B", 0.0 + minimapOffset, -0.047, 0.1638, 0.183)
    
        SetMinimapComponentPosition("minimap_mask", "L", "B", 0.0 + minimapOffset, 0.0, 0.128, 0.20)
    
        SetMinimapComponentPosition('minimap_blur', 'L', 'B', -0.01 + minimapOffset, 0.025, 0.262, 0.300)
        SetBlipAlpha(GetNorthRadarBlip(), 0)
        SetRadarBigmapEnabled(true, false)
        SetMinimapClipType(0)
        Wait(50)
        SetRadarBigmapEnabled(false, false)
        DisplayRadar(false)
    
    end)
end)

