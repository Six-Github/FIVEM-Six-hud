
function SIX.Nui.CreateHUD()
    SendNUIMessage({action = "create", config = SIX.Config.CustomHUD})
end

function SIX.Nui.Update(toData)
    SendNUIMessage({action = "update", data = toData, config = SIX.Config.CustomHUD})
end

function SIX.Nui.MessageDisplay(action)
    SendNUIMessage({action = "display", display = action})
end

