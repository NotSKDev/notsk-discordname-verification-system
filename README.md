# **notsk-discordname-verification-system**  

## **Description**  
A FiveM server script designed to verify if a user's Discord display name matches their FiveM identifier name.  

- If the names match, the user is approved to connect.  
- If the Discord name is correct but doesn't match the FiveM identifier, the user is rejected.  

---

## **Features**  
- Automatic verification of Discord display names against FiveM names.  
- Logs approved and rejected connections to specific Discord channels.  

---

## **Usage**  

### **Verification Process**  
- **Accepted:**  
  If the Discord name matches the FiveM identifier, the user connects successfully.  
  ![Accept Log](https://cdn.discordapp.com/attachments/1256542322653401174/1319580947829493780/Screenshot_2024-12-20-13-36-51-988_com.discord-edit.jpg?ex=67667b06&is=67652986&hm=6d611c6a0c143d27e9ead48c6c3c3bb879e7a6c693609ddca52260c78f1d57d8&)  

- **Rejected:**  
  If the Discord name does not match the FiveM identifier, the user is rejected from connecting.  
  ![Reject Log](https://cdn.discordapp.com/attachments/1256542322653401174/1319580960680968222/Screenshot_2024-12-20-13-37-27-999_com.discord-edit.jpg?ex=67667b09&is=67652989&hm=899fe1e83f20e5bd7a1fedae9a0643104dd0c08577b1bb05fa9699aa8c478611&)  

---

## **Configuration**  

Update the following variables in `server.lua` to set up your server:  

```lua
local guildId = "your-discord-guild-id"
local botToken = "your-discord-bot-token"
local logAcceptedChannelId = "your-log-accepted-channel-id"
local logRejectedChannelId = "your-log-rejected-channel-id"
```

### **Steps to Configure**  
1. Replace `guildId` with your Discord **Server ID**.  
2. Replace `botToken` with your **Discord Bot Token**.  
3. Replace `logAcceptedChannelId` with the **Channel ID** for logging accepted connections.  
4. Replace `logRejectedChannelId` with the **Channel ID** for logging rejected connections.  

---

## **License**  
This project is licensed under the [MIT License](LICENSE).  
