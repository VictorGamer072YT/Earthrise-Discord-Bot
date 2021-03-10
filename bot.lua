local discordia = require('discordia')
local client = discordia.Client()




client:on('ready', function()
	print('Logged in as '.. client.user.username)
end)





client:on('messageCreate', function(message)
    if message.author.bot then return end
	if message.content == '!ping' then
		message.channel:send('Pong!')
	end
end)



client:on('messageCreate', function(message)
    if message.author.bot then return end
	if message.content == '!pong' then
		message.channel:send('Ping! <:doccursed:818668428625182810>')
	end
end)
-- <:doccursed:818668428625182810>

-- debug joke :P
client:on('messageCreate', function(message)
    if message.author.bot then return end
	if message.content == '<:doccursed:818668428625182810>' then
		message.channel:send('<:doccursed:818668428625182810>')
	end
end)



-- Help menu
client:on('messageCreate', function(message)
    if message.author.bot then return end
	if message.content == '!help' then
		message.channel:send('***Anti Tony 2000 Help Menu:***\n**!help =**  Displays the menu you are in right now.\n**!ping =** Pong!.\n**!pong =** Ping!. <:doccursed:818668428625182810>\n**!uptime =** Displays the bot\'s uptime.\n**!kick =** Kick\'s a user.\n**!ban =** Ban\'s a user.')
	end
end)



--[[ 
    Original JavaScript code, here for reference.
message.channel.send("***Earthrise Bot Help Menu:***");
message.channel.send("**!ping =** *Displays the Bot's ping.*");
message.channel.send("**!help =**  *Displays the menu you are in right now.*");
message.channel.send("**!uptime =** *Displays the bot's uptime.*");
]]



client:run('Bot Njk4NTg0MzQ5NjgyOTU4NDE4.XpH9YA.5gxE856qYiXICsrD_yM0_ywYftc')