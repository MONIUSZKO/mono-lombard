ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent('mono_lombard:sell', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local sellito = false

    for i,v in pairs(xPlayer.getInventory(false)) do
        if Config.Items[v.name] then
            if v.count > 0 then
                local reward = v.count * math.random(Config.Items[v.name].min, Config.Items[v.name].max)
                sellito = true
                xPlayer.removeInventoryItem(v.name, v.count)
                xPlayer.addMoney(reward)

                if Config.Notify == 'OKOK' then
                TriggerClientEvent('okokNotify:Alert', source, 'POWIADOMIENIE', 'Otrzymałeś ' ..reward.. '$ za sprzedaż ' ..v.label, 5000, 'info')
                else
                xPlayer.showNotification('Otrzymałeś ' ..reward.. '$ za sprzedaż ' ..v.label)
            end
        end
    end
end

    if not sellito then
        if Config.Notify == 'OKOK' then
        --exports['okok-notify']:Alert("POWIADOMIENIE", Config.Text, 10000, 'info')
        TriggerClientEvent('okokNotify:Alert', source, 'POWIADOMIENIE', Config.Text, 10000, 'info')
        else
        xPlayer.showNotification(Config.Text)
    end
end
end)

--
-- K U P O W A N I E
--

RegisterServerEvent('mono_lombard:buy:kapital', function()
    local xPlayer = ESX.GetPlayerFromId(source)

    if xPlayer.getMoney() >= 750 then 
        xPlayer.removeInventoryItem('money', 750)
        xPlayer.addInventoryItem('notakapitalowa', 1)
    else
        if Config.Notify == 'OKOK' then
            TriggerClientEvent('okokNotify:Alert', source, 'POWIADOMIENIE', 'Nie stać cię na to', 5000, 'info')
            else
            xPlayer.showNotification('Nie stać cię na to')
        end
    end
end)

RegisterServerEvent('mono_lombard:buy:drill', function()
    local xPlayer = ESX.GetPlayerFromId(source)

    if xPlayer.getMoney() >= 350 then 
        xPlayer.removeInventoryItem('money', 350)
        xPlayer.addInventoryItem('drill', 1)
    else
        if Config.Notify == 'OKOK' then
            TriggerClientEvent('okokNotify:Alert', source, 'POWIADOMIENIE', 'Nie stać cię na to', 5000, 'info')
            else
            xPlayer.showNotification('Nie stać cię na to')
        end
    end
end)

RegisterServerEvent('mono_lombard:buy:fishingrod', function()
    local xPlayer = ESX.GetPlayerFromId(source)

    if xPlayer.getMoney() >= 75 then 
        xPlayer.removeInventoryItem('money', 75)
        xPlayer.addInventoryItem('fishingrod', 1)
    else
        if Config.Notify == 'OKOK' then
            TriggerClientEvent('okokNotify:Alert', source, 'POWIADOMIENIE', 'Nie stać cię na to', 5000, 'info')
            else
            xPlayer.showNotification('Nie stać cię na to')
        end
    end
end)
