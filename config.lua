Config = {}

--------------------------
-- Utility
--------------------------
Config.Utility = {
    Framework = "NEW", -- "NEW" - New QBCore | "OLD" - Old QBCore
    CoreName = "rsg-core", -- Your core name
    OpenInventory = "inventory:server:OpenInventory",
    SetStash = "inventory:client:SetCurrentStash",
    StashID = false, -- NOTE 1*
    NeedJob = false, -- Need job for opening the bag?
    JobName = "mechanic", -- Job
    NeedGang = false, -- Need gang for opening the bag?
    GangName = "ballas", -- Gang
    StashNames = {
        Small = "Small_Backpack",   -- Name of stash
        Medium = "Medium_Backpack", -- Name of stash
        Large = "Large_Backpack"    -- Name of stash
    },
    Weight = {
        Small = 2500,    -- Weight of small backpack
        Medium = 4500,  -- Weight of medium backpack
        Large = 6500,   -- Weight of large backpack
    },
    Slots = {
        Small = 25,     -- Slots of small backpack
        Medium = 35,    -- Slots of medium backpack
        Large = 45,     -- Slots of large backpack
    },
}

Language = {
    NoJob = "You don't have the necessary work.",
    NoGang = "You don't have the necessary gang.",
}

function Notify(msg)
    RSGCore.Functions.Notify(msg)
end

---------- NOTE 1*
-- If is true, when opening the backpack, it will generate a serial number, 
-- so if you give the same backpack to someone else, that person will be able to see the items. 
-- If it has false, it will always be visible only to the player himself.
-- If you are using with ID , you need to put the backpack's on shops because the ID only generate when someone buy with shop.