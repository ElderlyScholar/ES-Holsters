local QBCore = exports["qb-core"]:GetCoreObject()

local function HolsterDraw()
    local Ped = PlayerPedId()
    local Holster = GetPedDrawableVariation(Ped, Config.DrawableType)

    for k, v in pairs(Config.Drawables) do
        if Holster == k then
            SetPedComponentVariation(Ped, Config.DrawableType, v, 1, 0)
        end
    end
end

exports("HolsterDraw", HolsterDraw)

RegisterNetEvent("ES-Holsters:client:Draw", function()
    local Ped = PlayerPedId()
    local Holster = GetPedDrawableVariation(Ped, Config.DrawableType)

    for k, v in pairs(Config.Drawables) do
        if Holster == k then
            SetPedComponentVariation(Ped, Config.DrawableType, v, 1, 0)
        end
    end
end)
