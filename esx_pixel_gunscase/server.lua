-- Script by Pixel #3683, don't share it! It's all free!

-- Guns Crate

ESX.RegisterUsableItem('pistolcrate', function(source)
	local _source = source
	local xPlayer  = ESX.GetPlayerFromId(source)
	local xJob = xPlayer.getJob() -- If you don't have special job for your GunDealer just delete this
	if xJob.name == "gundealer" then -- If you don't have special job for your GunDealer just delete this
		xPlayer.removeInventoryItem('pistolcrate', 1)
		xPlayer.addInventoryItem('pistolcase', 10) -- You can change amount of cases!
		TriggerClientEvent('mythic_notify:client:SendJobAlert', source, { type = 'inform', text = 'You opened crate', lenght = 3000 })
	end
end)

ESX.RegisterUsableItem('pistolmk2crate', function(source)
	local _source = source
	local xPlayer  = ESX.GetPlayerFromId(source)
	local xJob = xPlayer.getJob()
	if xJob.name == "gundealer" then
		xPlayer.removeInventoryItem('pistolmk2crate', 1)
		xPlayer.addInventoryItem('pistolmk2case', 10) -- You can change amount of cases!
		TriggerClientEvent('mythic_notify:client:SendJobAlert', source, { type = 'inform', text = 'You opened crate', lenght = 3000 })
	end
end)

ESX.RegisterUsableItem('vintagecrate', function(source)
	local _source = source
	local xPlayer  = ESX.GetPlayerFromId(source)
	local xJob = xPlayer.getJob()
	if xJob.name == "gundealer" then
		xPlayer.removeInventoryItem('wintagecrate', 1)
		xPlayer.addInventoryItem('vintagecase', 10) -- You can change amount of cases!
		TriggerClientEvent('mythic_notify:client:SendJobAlert', source, { type = 'inform', text = 'You opened crate', lenght = 3000 })
	end
end)

-- You can copy it all time just remember to add items to your database!

-- Guns Cases

ESX.RegisterUsableItem('pistolcase', function(source)
	local _source = source
	local xPlayer  = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem('pistolcase', 1)
		xPlayer.addWeapon('WEAPON_PISTOL', 120) -- You can change amount of ammunition!
		TriggerClientEvent('mythic_notify:client:SendJobAlert', source, { type = 'inform', text = 'You opened case', lenght = 3000 })
end)

ESX.RegisterUsableItem('pistolmk2case', function(source)
	local _source = source
	local xPlayer  = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem('pistolmk2case', 1)
		xPlayer.addWeapon('WEAPON_PISTOL_MK2', 120) -- You can change amount of ammunition!
		TriggerClientEvent('mythic_notify:client:SendJobAlert', source, { type = 'inform', text = 'You opened case', lenght = 3000 })
end)

ESX.RegisterUsableItem('vintagecase', function(source)
	local _source = source
	local xPlayer  = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem('vintagecase', 1)
		xPlayer.addWeapon('WEAPON_VINTAGEPISTOL', 120) -- You can change amount of ammunition!
		TriggerClientEvent('mythic_notify:client:SendJobAlert', source, { type = 'inform', text = 'You opened case', lenght = 3000 })
end)