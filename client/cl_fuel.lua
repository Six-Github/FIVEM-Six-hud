
-- CONFIGURA QUI I TUOI SCRIPT. Gli Unici due supportati sono LegacyFuel e ox_fuel

-- IMPORTANTE @--SIX.PLAYER.VEHICLE corrisponde al veicolo corrente del player
if GetResourceState("LegacyFuel") ~= "missing" then

    Citizen.CreateThread(function ()
        while true do
            Wait(1000)
            -- FUEL  CARBURANTE
            SIX.PLAYER.VehicleFuel  =  exports["LegacyFuel"]:GetFuel(SIX.PLAYER.VEHICLE)
        end
    end)
elseif  GetResourceState("ox_fuel") ~= "missing" then

    Citizen.CreateThread(function ()
        while true do
            Wait(1000)
            -- FUEL  CARBURANTE
            SIX.PLAYER.VehicleFuel  = Entity(SIX.PLAYER.VEHICLE).state.fuel 

        end
    end)
end

