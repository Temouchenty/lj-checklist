local checklistOpen = false

RegisterNetEvent('lj-checklist:client:open')
AddEventHandler('lj-checklist:client:open', function()
    SetNuiFocus(true, true)
    SendNUIMessage({ action = "open"}) 
    checklistOpen = true
    if Config.Sound == true then
        TriggerServerEvent("InteractSound_SV:PlayOnSource", "StashOpen", 0.5)
    end
end)

RegisterCommand('checklist', function()
    if not checklistOpen then
        SetNuiFocus(true, true)
        SendNUIMessage({ action = "open"}) 
        checklistOpen = true
    if Config.Sound == true then
        TriggerServerEvent("InteractSound_SV:PlayOnSource", "StashOpen", 0.5)
    end
end
end)

RegisterNUICallback('closeCheckList', function()
    SetNuiFocus(false, false)
    checklistOpen = false
end) 

RegisterKeyMapping('checklist', 'Open Checklist', 'keyboard', Config.OpenKey)