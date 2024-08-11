if RequestFramwork() then

    -- Funzioni per lo status 

    ESX = exports["es_extended"]:getSharedObject()

    Citizen.CreateThread(function ()
        while true do
            Wait(1000)

            -- Hunger | Fame
            TriggerEvent('esx_status:getStatus', 'hunger', function(status)

                SIX.PLAYER.HUNGER = status.val / 10000 
            end)
        
            -- Thirst | Sete
            TriggerEvent('esx_status:getStatus', 'thirst', function(status) 
                SIX.PLAYER.THIRST = status.val / 10000 
            end)
        
            -- Stress | Specifico che non e comprso con ESX questa. Io consiglio di 
            -- usare https://github.com/utkuali/Stress-System-by-utku

            if SIX.Config.CustomHUD then
                TriggerEvent('esx_status:getStatus', 'stress', function(status) 
        
                    SIX.PLAYER.STRESS = status.val / 10000 
                end)
            end
        end
    end)
else
    return
end