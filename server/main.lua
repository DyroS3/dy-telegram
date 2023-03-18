ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterServerCallback('dy_carDelivery:getStorage', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)
	MySQL.Async.fetchAll('SELECT * FROM dy_carDelivery ORDER BY price ASC', {}, function(result)
		cb(json.encode(result))
	end)
end)

ESX.RegisterServerCallback('dy_carDelivery:getCount', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)
	local countPlayer = MySQL.Sync.fetchScalar("SELECT COUNT(1) FROM dy_carDelivery")
	-- print(countPlayer)
	cb(countPlayer)
end)
ESX.RegisterServerCallback('dy_carDelivery:spawnVehicle', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)
	cb()
end)

RegisterNetEvent("dy_carDelivery:payout")
AddEventHandler("dy_carDelivery:payout", function(payout)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.addMoney(payout)
end)

RegisterNetEvent("dy_carDelivery:addVehicles")
AddEventHandler("dy_carDelivery:addVehicles", function()
	local xPlayer = ESX.GetPlayerFromId(source)

	for i= 1, 4 do

		Citizen.Wait(500)

		local name = math.random(1, Config.maxNameNumber)
		local vehType = math.random(1, Config.maxVehTypeNumber)
		local price = math.random(Config.MinRangePrice, Config.MaxRangePrice)

		MySQL.Async.execute('INSERT INTO dy_carDelivery (name, type, price) VALUES (@name, @type, @price)',
		{ ['name'] = Config.Names[name], ['type'] =  Config.vehType[vehType], ['price'] = price},
		function()
		  
		end)
	end

end)

RegisterServerEvent('dy_carDelivery:startDeliveryJob')
AddEventHandler('dy_carDelivery:startDeliveryJob', function(idItemBuy)
    
	local b = source;
    local c = ESX.GetPlayerFromId(b)
	local xPlayer = ESX.GetPlayerFromId(source)
	MySQL.Async.fetchAll('SELECT * FROM dy_carDelivery WHERE id = @idItemBuy',
		  { ['idItemBuy'] = idItemBuy },
		  function(result)		
		TriggerClientEvent("dy_carDelivery:startJobDeliverySpawn", b, result[1].name, result[1].type, result[1].price)
		MySQL.Async.execute('DELETE FROM dy_carDelivery WHERE `id` = @id', {['@id'] = result[1].id})			
		-- print("JOB Started")
	end)
end)

