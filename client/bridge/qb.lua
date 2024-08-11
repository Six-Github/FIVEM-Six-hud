

if RequestFramwork() then
  
    QBCore = exports['qb-core']:GetCoreObject()

    local PlayerData = QBCore.Functions.GetPlayerData()
    RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
        Wait(2000)
        PlayerData = QBCore.Functions.GetPlayerData()
        Wait(3000)
        SetEntityHealth(PlayerPedId(), 200)
    end)

    RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
        PlayerData = {}
    end)
    
    RegisterNetEvent('QBCore:Player:SetPlayerData', function(val)
        PlayerData = val
    end)

    Citizen.CreateThread(function ()
        while true do
            Wait(1000)
            -- HUNFER | SETE
            SIX.PLAYER.HUNGER  =  PlayerData.metadata['hunger']

            -- THIRST | SETE
            SIX.PLAYER.THIRST  =  PlayerData.metadata['thirst']

            -- STRESS | Incluso con qb-core
            SIX.PLAYER.STRESS  = PlayerData.metadata['stress'] 

        end
    end)
else
    return
end