CreateThread(function()
    while true do
        if SIX.PLAYER.SEATBEALT then
            Citizen.Wait(2)
            DisableControlAction(0, 75, true)
        else
            Wait(1000)
        end
    end
end)

RegisterKeyMapping("seatbelt", "Metti/Togli la cintura", "keyboard", SIX.Config.CustomHUD.SeatBeltKey)
RegisterCommand("seatbelt", function ()
    if SIX.PLAYER.IsDriving then
        local class = GetVehicleClass(SIX.PLAYER.VEHICLE)
        if not SIX.PLAYER.SEATBEALT  then
            if class ~= 8 and class ~= 13 and class ~= 14 then
                SIX.Config.Framwork.Notify(SIX.Config.Lang["onseatbelt"])
                SIX.PLAYER.SEATBEALT = true
            end
        else 
            SIX.Config.Framwork.Notify(SIX.Config.Lang["offseatbelt"])
            SIX.PLAYER.SEATBEALT = false
        end 
    end
end, false)