# notsk-discordname-verification-system

## Description

A FiveM server script that verifies if a user's Discord display name matches their FiveM identifier name. If the names match, the user is approved to connect to the server. If the Discord name is correct but does not match the FiveM identifier, the user is rejected from connecting.

### Features:
- Automatically verifies users' Discord display names against their FiveM names.
- Logs connection approvals and rejections to specified Discord channels.

---

## Usage

1. **Check User Connection**  
   - The script checks if the connecting user's Discord display name matches their FiveM identifier name.  
   - **Accepted:** User connects successfully if both names match.  
   - **Rejected:** User is rejected if the Discord name does not match the FiveM name.  

2. **Logging**  
   - Accepted connections are logged in a designated Discord channel.  
   - Rejected connections are logged in another specified channel.  

### Log Examples:
**Accept Log**  
![Log Accept](https://cdn.discordapp.com/attachments/1256542322653401174/1319580947829493780/Screenshot_2024-12-20-13-36-51-988_com.discord-edit.jpg?ex=67667b06&is=67652986&hm=6d611c6a0c143d27e9ead48c6c3c3bb879e7a6c693609ddca52260c78f1d57d8&)  

**Reject Log**  
![Log Reject](https://cdn.discordapp.com/attachments/1256542322653401174/1319580960680968222/Screenshot_2024-12-20-13-37-27-999_com.discord-edit.jpg?ex=67667b09&is=67652989&hm=899fe1e83f20e5bd7a1fedae9a0643104dd0c08577b1bb05fa9699aa8c478611&)  

---

## Configuration

Modify the following variables in `server.lua` to set up your server:

```lua
-- Configuration
local guildId = "paste your discord guild id(server id)!!"
local botToken = "paste your discord bot token here!!"
local logAcceptedChannelId = "paste your name-verify accept log channel id!!"
local logRejectedChannelId = "paste your name-verify reject log channel id!!"
```

### Steps to Configure:
1. Obtain your Discord **Guild ID** and replace it in `guildId`.
2. Generate a **Discord Bot Token** and replace it in `botToken`.
3. Create a **log channel** for accepted connections and replace its ID in `logAcceptedChannelId`.
4. Create another **log channel** for rejected connections and replace its ID in `logRejectedChannelId`.

---

## License

This project is open-source and available under the [MIT License](LICENSE).
