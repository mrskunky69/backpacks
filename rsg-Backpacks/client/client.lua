local RSGCore = exports['rsg-core']:GetCoreObject()

local citizenid = nil
RegisterNetEvent('rsg-Backpack:Client:Smallbackpack', function(smallbackpackid)
	local job = RSGCore.Functions.GetPlayerData().job.name
	local gang = RSGCore.Functions.GetPlayerData().gang.name
    if Config.Utility.NeedJob == true then
        if job ~= Config.Utility.JobName then
            Notify(Language.NoJob)
            return false
        end
    end
    if Config.Utility.NeedGang == true then
        if job ~= Config.Utility.GangName then
            Notify(Language.NoGang)
            return false
        end
    end
    local citizenid = RSGCore.Functions.GetPlayerData().citizenid
    if Config.Utility.StashID then
        TriggerServerEvent(Config.Utility.OpenInventory, "stash", Config.Utility.StashNames.Small..'_'..smallbackpackid, {maxweight = Config.Utility.Weight.Small, slots = Config.Utility.Weight.Slots})
        TriggerEvent(Config.Utility.SetStash, Config.Utility.StashNames.Small..'_'..smallbackpackid)
    else
        TriggerServerEvent(Config.Utility.OpenInventory, "stash", Config.Utility.StashNames.Small..'_'..citizenid, {maxweight = Config.Utility.Weight.Small, slots = Config.Utility.Weight.Slots})
        TriggerEvent(Config.Utility.SetStash, Config.Utility.StashNames.Small..'_'..citizenid)
    end
end)


RegisterNetEvent('rsg-Backpack:Client:Mediumbackpack', function(mediumbackpackid)
	local job = RSGCore.Functions.GetPlayerData().job.name
	local gang = RSGCore.Functions.GetPlayerData().gang.name
    if Config.Utility.NeedJob == true then
        if job ~= Config.Utility.JobName then
            Notify(Language.NoJob)
            return false
        end
    end
    if Config.Utility.NeedGang == true then
        if job ~= Config.Utility.GangName then
            Notify(Language.NoGang)
            return false
        end
    end
    local citizenid = RSGCore.Functions.GetPlayerData().citizenid
    if Config.Utility.StashID then
        TriggerServerEvent(Config.Utility.OpenInventory, "stash", Config.Utility.StashNames.Small..'_'..mediumbackpackid, {maxweight = Config.Utility.Weight.Small, slots = Config.Utility.Weight.Slots})
        TriggerEvent(Config.Utility.SetStash, Config.Utility.StashNames.Small..'_'..mediumbackpackid)
    else
        TriggerServerEvent(Config.Utility.OpenInventory, "stash", Config.Utility.StashNames.Medium..'_'..citizenid, {maxweight = Config.Utility.Weight.Medium, slots = Config.Utility.Weight.Slots})
        TriggerEvent(Config.Utility.SetStash, Config.Utility.StashNames.Medium..'_'..citizenid)
    end
end)
RegisterNetEvent('rsg-Backpack:Client:Largebackpack', function(largebackpackid)
	local job = RSGCore.Functions.GetPlayerData().job.name
	local gang = RSGCore.Functions.GetPlayerData().gang.name
    if Config.Utility.NeedJob == true then
        if job ~= Config.Utility.JobName then
            Notify(Language.NoJob)
            return false
        end
    end
    if Config.Utility.NeedGang == true then
        if job ~= Config.Utility.GangName then
            Notify(Language.NoGang)
            return false
        end
    end
    local citizenid = RSGCore.Functions.GetPlayerData().citizenid
    if Config.Utility.StashID then
        TriggerServerEvent(Config.Utility.OpenInventory, "stash", Config.Utility.StashNames.Small..'_'..largebackpackid, {maxweight = Config.Utility.Weight.Small, slots = Config.Utility.Weight.Slots})
        TriggerEvent(Config.Utility.SetStash, Config.Utility.StashNames.Small..'_'..largebackpackid)
    else
        TriggerServerEvent(Config.Utility.OpenInventory, "stash", Config.Utility.StashNames.Large..'_'..citizenid, {maxweight = Config.Utility.Weight.Large, slots = Config.Utility.Weight.Slots})
        TriggerEvent(Config.Utility.SetStash, Config.Utility.StashNames.Large..'_'..citizenid)
    end
end)