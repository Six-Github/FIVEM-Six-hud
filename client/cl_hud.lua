SIX.PLAYER = {}
SIX.PLAYER.SEATBEALT = false
SIX.PLAYER.VOICELEVEL = 1
SIX.PLAYER.LOADMAP = false

Citizen.CreateThread(function ()
    while true do
    
        if SIX.PLAYER.IsDriving then
            SIX.PLAYER.SpeedVehicle = math.floor(GetEntitySpeed(SIX.PLAYER.VEHICLE)*3.6)
            Wait(100)
            SIX.Nui.Update(SIX.PLAYER)
        else
            Wait(2000)
        end
    end
end)


Citizen.CreateThread(function ()
    while true do
        Wait(1000)
        SIX.PLAYER.ID            = PlayerId()
        SIX.PLAYER.PED           = PlayerPedId()    
        SIX.PLAYER.OXIGEN        = GetPlayerUnderwaterTimeRemaining(SIX.PLAYER.ID) * 10
        SIX.PLAYER.SWIMMING      = IsPedSwimming(SIX.PLAYER.PED)
        SIX.PLAYER.ISTALKING     = NetworkIsPlayerTalking(SIX.PLAYER.ID)
        SIX.PLAYER.RADIOCHANNEL  = LocalPlayer.state['radioChannel']
        SIX.PLAYER.ISVOICEACTIVE = MumbleIsConnected()
        SIX.PLAYER.HEALT         = GetEntityHealth(SIX.PLAYER.PED) - 100
        SIX.PLAYER.ARMOR         = GetPedArmour(SIX.PLAYER.PED)
        SIX.PLAYER.STAMINA       = GetPlayerStamina(SIX.PLAYER.ID )
        SIX.PLAYER.VEHICLE       = GetVehiclePedIsIn(SIX.PLAYER.PED, false)
        SIX.PLAYER.IsDriving     = IsPedInAnyVehicle(SIX.PLAYER.PED, true)
        SIX.PLAYER.VehicleFuel   = Entity(GetVehiclePedIsIn(SIX.PLAYER.PED, false)).state.fuel 


        if IsPauseMenuActive() then
           SIX.Nui.MessageDisplay(false)
        else
           SIX.Nui.MessageDisplay(true)
        end

        if not SIX.PLAYER.IsDriving then
            DisplayRadar(false)
        else
            DisplayRadar(true)
        end  



        SIX.Nui.Update(SIX.PLAYER)
    end
end)





