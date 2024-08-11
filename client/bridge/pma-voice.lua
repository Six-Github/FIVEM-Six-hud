-- Configura le opzioni della voce 
if RequestPMAVoice() then

    -- Parlare in radio
    AddEventHandler("pma-voice:radioActive", function(isRadioTalking)
        SIX.PLAYER.RADIOTALKING = isRadioTalking
    end)

    -- Raggio della voce
    AddEventHandler("pma-voice:setTalkingMode", function(val)
        SIX.PLAYER.VOICELEVEL = val
    end)

end