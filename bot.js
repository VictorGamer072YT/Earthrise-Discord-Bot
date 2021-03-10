const Discord = require("discord.js");
const client = new Discord.Client();
const prettyMilliseconds = require("pretty-ms");

client.on("ready", () => {
  console.log("WE HAVE A LIFTOFF!");
  console.log("");
});

client.on("message", (message) => {
  if (message.content.startsWith("ping")) {
    message.channel.send("pong!");
  }
});

client.on("message", (message) => {
  if (message.content.startsWith("!help")) {
    message.channel.send("***Earthrise Bot Help Menu:***");
message.channel.send("**!ping =** *Displays the Bot's ping.*");
message.channel.send("**!help =**  *Displays the menu you are in right now.*");
message.channel.send("**!uptime =** *Displays the bot's uptime.*");
  }
});

client.on('message', message => {
  if (message.content === '!ping') {  
    message.channel.send(`Latency is ${Date.now() - message.createdTimestamp}ms. API Latency is ${Math.round(client.ws.ping)}ms`);
  }
});

client.on("guildMemberAdd", (member) => {
    if (Date.now() - member.user.createdAt <= 600000) {
        member.ban({ days: 7, reason: 'New account, suspected to be tony!' })
    }
});

client.on("message", (message) => {
  if (message.content.startsWith("!uptime")) {
    message.channel.send(`Uptime: ${prettyMilliseconds(client.uptime)}`)
  }
});

client.login("Njk4NTg0MzQ5NjgyOTU4NDE4.XpH9YA.5gxE856qYiXICsrD_yM0_ywYftc");