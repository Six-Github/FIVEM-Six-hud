SIX         = {}
SIX.Config  = {}
SIX.Nui     = {} 


SIX.Config.CustomHUD = {
    IsStress = false, -- Vuoi usare lo stress ?
    SeatBeltKey = "B"
}

SIX.Config.Lang = {
    ["onseatbelt"]  = 'Hai messo la cintura',
    ["offseatbelt"] = 'Hai tolto la cintura',
}

SIX.Config.Framwork = {
    IsCustom = nil, -- Mettere il nome del framework custom

    -- QUESTI VERRANO RILEVATI DALLO SCRIPT. SONO QUELLI SUPPORTATI
    Supported = {
        ESX = GetResourceState("esx_status") ~= "missing",
        QB  = GetResourceState("qb-core") ~= "missing",
    },

    -- VoiceScript: Specifica il nome del script utilizzato per la gestione della voce.
    -- Esempio: VoiceScript = "pma-voice"
    VoiceScript = "pma-voice", 

    Fuel = nil,
    -- QUESTO SCRIPT supporta Ox_fuel e LegacyFuel per script custom vai client/cl_fuel.lua

    Notify = function (text, type)
        -- Se vuoi mettere le notifiche custom qui, togli i comandi sottostanti:
        -- Queste sono quelle default di ESX e QB
        if SIX.Config.Framwork.Supported.ESX then
            ESX.ShowNotification(text)
        elseif SIX.Config.Framwork.Supported.QB then
            QBCore.Functions.Notify(text, type)
        end
    end
}

