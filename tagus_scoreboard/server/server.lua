ESX = nil

ESX = exports["es_extended"]:getSharedObject()

local ShowNumbers = true

Citizen.CreateThread( function(source)
	local xPlayers = ESX.GetPlayers()
	while true do
		xPlayers = ESX.GetPlayers()
  
			AmbulanceConnected = 0
			PoliceConnected = 0
			BurgerShotConnected = 0
			UnicornConnected = 0
			GangsConnected = 0
			MechanicConnected = 0
			LawyerConnected = 0

		
		for i=1, #xPlayers, 1 do
			local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
			
			if xPlayer.job.name == 'ambulance' then
				AmbulanceConnected = AmbulanceConnected + 1
			end	
			
			if xPlayer.job.name == 'police' then
				PoliceConnected = PoliceConnected + 1
			end	
			
			if xPlayer.job.name == 'burgershot' then
				BurgerShotConnected = BurgerShotConnected + 1
			end
			
			if xPlayer.job.name == 'mechanic' then
				MechanicConnected = MechanicConnected + 1
			end
			


			
		end

    TriggerClientEvent('updateNumbers', -1, AmbulanceConnected, PoliceConnected, MechanicConnected, BurgerShotConnected)  -- Sending data to all clients

		
		Citizen.Wait(1000 * 1) -- Update Rate
	end
end)