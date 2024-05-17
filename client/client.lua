local QBCore = exports["qb-core"]:GetCoreObject()

RegisterNetEvent("ES-Holsters:client:Draw", function()
    local Ped = PlayerPedId()
    local Holster = GetPedDrawableVariation(Ped, Config.DrawableType)


    for k, v in pairs(Config.Drawables) do
        if tostring(Holster) == tostring(k) then
            SetPedComponentVariation(Ped, Config.DrawableType, v, 1, 0)
        elseif tostring(Holster) == tostring(v) then
            SetPedComponentVariation(Ped, Config.DrawableType, tonumber(k), 1, 0)
        end
    end
end)