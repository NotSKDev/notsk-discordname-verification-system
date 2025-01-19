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

## **Supported Frameworks**
This code works on the following FiveM frameworks:
- **ESX**
- **QBCore**
- **QBox**
- **OX**

---

## **Usage**

### **Verification Process**
- **Accepted:**  
  If the Discord name matches the FiveM identifier, the user connects successfully.  
  ![Accept Log](https://r2.fivemanage.com/DFoKiwmVyTTIk1MRmQKVF/images/Screenshot_2024-12-20-13-36-51-988_com.discord-edit.jpg)

- **Rejected:**  
  If the Discord name does not match the FiveM identifier, the user is rejected from connecting.  
  ![Reject Log](https://r2.fivemanage.com/DFoKiwmVyTTIk1MRmQKVF/images/Screenshot_2024-12-20-13-37-27-999_com.discord-edit.jpg)  

---

## **Configuration**

Update the following variables in `server.lua` to set up your server:

```lua
local guildId = "paste your discord guild id (server id)!!"
local botToken = "paste your discord bot token here!!"
local logAcceptedChannelId = "paste your name-verify accept log channel id!!"
local logRejectedChannelId = "paste your name-verify reject log channel id!!"
```

### **Steps to Configure**
1. Replace `guildId` with your Discord **Server ID**.
2. Replace `botToken` with your **Discord Bot Token**.
3. Replace `logAcceptedChannelId` with the **Channel ID** for logging accepted connections.
4. Replace `logRejectedChannelId` with the **Channel ID** for logging rejected connections.

---

## **License**
This project is licensed under the [MIT License](LICENSE).
