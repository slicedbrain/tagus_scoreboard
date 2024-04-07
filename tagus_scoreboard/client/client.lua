RegisterCommand('servicos', function()
    lib.showContext('some_menu')
end)

RegisterKeyMapping('servicos', 'Ver Serviços', 'keyboard', 'F9')

RegisterNetEvent('updateNumbers')
AddEventHandler('updateNumbers', function(ambulanceCount, policeCount, mechanicCount, burgershotCount)
    
    local policeState = nil
    local ambulanceState = nil
    local mechanicState = nil
    local burgershotState = nil
    
   
    if policeCount > 0 then
        policeState = 'Active'
        policeON = false
    else
        policeState = 'Inactive'
        policeON = true
    end

    if ambulanceCount > 0 then
        ambulanceState = 'Active'
        ambulanceON = false
    else
        ambulanceState = 'Inactive'
        ambulanceON = true
    end

    if mechanicCount > 0 then
        mechanicState = 'Active'
        mechanicON = false
    else
        mechanicState = 'Inactive'
        mechanicON = true
    end

    if burgershotCount > 0 then
        burgershotState = 'Active'
        burgershotON = false
    else
        burgershotState = 'Inactive'
        burgershotON = true
    end

    

    lib.registerContext({
        id = 'some_menu',
        title = 'Tagus RP',
        options = {
            {
            title = 'Players Online',
            description = 'Total: 1/64',
            readOnly = true,
            icon = 'user',
            iconColor = 'darkorange',
    
            },
                {
            title = 'Police',
            description = 'State: ' ..tostring(policeState).. ' | Workers: '..policeCount.. '/64',
            readOnly = true,
            icon = 'shield-halved',
            iconColor = 'darkorange',
            disabled = policeON,
    
            },
                {
            title = 'Ambulance',
            description = 'State: ' ..tostring(ambulanceState).. ' | Workers: '..ambulanceCount.. '/64',
            readOnly = true,
            icon = 'truck-medical',
            iconColor = 'darkorange',
            disabled = ambulanceON,
    
            },
                {
            title = 'Mechanic',
            description = 'State: ' ..tostring(mechanicState).. ' | Workers: '..mechanicCount.. '/64',
            readOnly = true,
            icon = 'wrench',
            iconColor = 'darkorange',
            disabled = mechanicON,
    
            },
                {
            title = 'BurgerShot',
            description = 'State: ' ..tostring(burgershotState).. ' | Workers: '..burgershotCount.. '/64',
            readOnly = true,
            icon = 'burger',
            iconColor = 'darkorange',
            disabled = burgershotON,
    
            },
        }
    })
end)
  

  
  
