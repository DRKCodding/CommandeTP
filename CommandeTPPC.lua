RegisterCommand("tppc", function(source, args, raw)
    local targetID = args[1]
    local xTarget = ESX.GetPlayerFromId(targetID)
    local xPlayer = ESX.GetPlayerFromId(source)

    if not (xTarget) then
        xPlayer.showNotification("~r~L'id du player est invalide~s~")
        return
    end

    SetEntityCoords(GetPlayerPed(targetID), 215.0766, -791.4468, 30.83751 + 1.0)
    xPlayer.showNotification(("Le joueur %s à été téléporter au parkin centrale"):format(xTarget.name))
    xTarget.showNotification(("Le Staff %s vous à TP au parking centrale"):format(xPlayer.name))
end, false)