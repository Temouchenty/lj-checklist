![LJ CHECKLIST](https://user-images.githubusercontent.com/91661118/140660982-cc0c75ab-5f41-4c07-ab8d-1ed98ef4c779.png)

# lj-checklist used for QBCore also standalone [just need to place event somewhere else]
Join my Discord laboratory for updates, support, and special early testing!
<br>
https://discord.gg/loljoshie

lj-checklist is a creative way to guide new players through your server. I stumbled upon the idea when I was just rewatching old NoPixel clips on Twitch and I saw they had a checklist system when 3.0 was first introduced, so I wanted to recreate it. https://www.twitch.tv/ratedepicz/clip/InterestingFantasticOtterDeIlluminati
<br>
Runs at ~ 0.00 ms

# Optional
* [interact-sound](https://github.com/qbcore-framework/interact-sound) (if you want sound effect)

# Installation

## qb-clothing
* Find this in **qb-clothing/client.lua/RegisterNetEvent('qb-clothes:client:CreateFirstCharacter')**
* And replace with this instead
```lua
RegisterNetEvent('qb-clothes:client:CreateFirstCharacter')
AddEventHandler('qb-clothes:client:CreateFirstCharacter', function()
    QBCore.Functions.GetPlayerData(function(PlayerData)
        local skin = "mp_m_freemode_01"
        openMenu({
            {menu = "character", label = "Character", selected = true},
            {menu = "clothing", label = "Features", selected = false},
            {menu = "accessoires", label = "Accessories", selected = false}
        })

        if PlayerData.charinfo.gender == 1 then 
            skin = "mp_f_freemode_01" 
        end
        
        ChangeToSkinNoUpdate(skin)
        SendNUIMessage({
            action = "ResetValues",
        })
    end)
        Wait(1200)
        TriggerEvent('lj-checklist:client:open')
end)
```

## If doing standalone just find somewhere that checks when player first spawns
```lua
  Wait(1200)
  TriggerEvent('lj-checklist:client:open')
```

# Key Features
* NoPixel styled menu
* Sets Focus so players can't move until the click accept button
* Changable logo found in CSS
* Toggleable menu incase players need to read through again
* Sound effect when menu is open optionable
#

# Previews
### resource ms
![resource ms](https://user-images.githubusercontent.com/91661118/140660899-aa967275-0793-4cd5-87e9-95847570e447.PNG)
### checklist menu
![checklist menu](https://user-images.githubusercontent.com/91661118/140660906-f1074ff7-6cad-4e90-a440-06a566a0512f.PNG)
### checklist fullscreen
![checklist menu](https://user-images.githubusercontent.com/91661118/140661098-acea01de-934e-4f44-a4aa-1705a018cbad.png)
#

# Change Logs

### 1.0
* Initial release

# Issues and Suggestions
Please use the GitHub issues system to report issues or make suggestions, when making suggestion, please keep [Suggestion] in the title to make it clear that it is a suggestion.
