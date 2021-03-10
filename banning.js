const Discord = require("discord.js");
const client = new Discord.Client();

client.on("ready", () => {
  console.log("Banning logic is still JS for now.");
  console.log("");
});

client.on("guildMemberAdd", (member) => {
    if (Date.now() - member.user.createdAt <= 600000) {
        member.ban({ days: 7, reason: 'New account, suspected to be tony!' })
    }
});
client.login("Njk4NTg0MzQ5NjgyOTU4NDE4.XpH9YA.5gxE856qYiXICsrD_yM0_ywYftc");