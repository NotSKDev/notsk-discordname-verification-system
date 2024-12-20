local guildId = "paste your discord guild id (server id)!!"
local botToken = "paste your discord bot token here!!"
local logAcceptedChannelId = "paste your name-verify accept log channel id!!"
local logRejectedChannelId = "paste your name-verify reject log channel id!!"

local function GetDiscordDisplayName(discordId, guildId, botToken)
    local displayName
    PerformHttpRequest("https://discord.com/api/guilds/" .. guildId .. "/members/" .. discordId, function(err, text, headers)
        if err == 200 then
            local data = json.decode(text)
            displayName = data.nick or data.user.username
        end
    end, "GET", "", { ["Authorization"] = "Bot " .. botToken })
    Wait(2000)
    return displayName
end

local function SendEmbedMessageToChannel(channelId, userId, title, description, color)
    local timestamp = os.date("!%Y-%m-%dT%H:%M:%SZ")
    local embed = {
        {
            ["title"] = title,
            ["description"] = description,
            ["color"] = color,
            ["footer"] = {
                ["text"] = "NotSK DisplayName verification system",
                ["icon_url"] = "https://cdn.discordapp.com/avatars/739854954042490990/4ba45ffd08e53c51ca855160d6c74ce4.webp?size=2048",
                ["timestamp"] = timestamp
            }
        }
    }
    local payload = json.encode({
        content = "<@" .. userId .. ">",
        embeds = embed
    })
    PerformHttpRequest("https://discord.com/api/v10/channels/" .. channelId .. "/messages", function(err, text, headers)
        if err ~= 200 then
            print("Failed to send embed message to channel.")
        end
    end, "POST", payload, { 
        ["Content-Type"] = "application/json", 
        ["Authorization"] = "Bot " .. botToken 
    })
end

AddEventHandler('playerConnecting', function(name, setKickReason, deferrals)
    local player = source
    deferrals.defer()
    local identifiers = GetPlayerIdentifiers(player)
    local discordId
    for _, id in ipairs(identifiers) do
        if string.find(id, "discord:") then
            discordId = string.gsub(id, "discord:", "")
        end
    end

    if not discordId then
        deferrals.done("You must connect through Discord.")
        return
    end

    deferrals.update("Validating your connection...")
    local displayName = GetDiscordDisplayName(discordId, guildId, botToken)
    if not displayName then
        deferrals.done("Failed to fetch your Discord display name.")
        return
    end

    if displayName ~= name then
        deferrals.done("Your Discord server display name must match your FiveM name.")
        SendEmbedMessageToChannel(logRejectedChannelId, discordId, "Rejected", "The user display name cannot match with FiveM name.", 16711680)
        return
    end

    deferrals.done()
    SendEmbedMessageToChannel(logAcceptedChannelId, discordId, "Connected", "The user display name successfully matched and connected.", 65280)
end)
