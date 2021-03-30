local discordia = require('discordia')
local client = discordia.Client()

discordia.extensions()

client:on('ready', function()
	print('Logged in as '.. client.user.username)
end)

--[[ client:on('memberJoin', function(member)
end) ]]

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





client:on('messageCreate', function(message)
    if message.author.bot then return end
  
    if message.content:sub(1, 4) == '!ban' then
      local author = message.guild:getMember(message.author.id)
      local member = message.mentionedUsers.first
  
      if not member then
        message:reply('It seems you forgot to mention someone to ban. <:whephone:818646815590187040>')
        return
      elseif not author:hasPermission("banMembers") then
        -- The user does not have enough permissions
        message:reply('I\'m afraid you can\'t ban people... :person_shrugging:')
        return
      end
  
      for user in message.mentionedUsers:iter() do
        member = message.guild:getMember(user.id)
        if author.highestRole.position > member.highestRole.position then
          message:reply('[insert member] was banned! <:wheajajahat:818644418512158723>')
          member:ban()
        end


        for user in message.mentionedUsers:iter() do
            member = message.guild:getMember(user.id)
            if author.highestRole.position < member.highestRole.position then
              message:reply('I\'m afraid you can\'t ban that person. <:byy2:818671952985980990>')
            end
      end
    end
  end
end)


--[[ client:on('messageCreate', function(message)
if message.content == '!debug' then
    message.channel:send('message.channel:sendMessage(string.format(memberCount))')
    message.channel:sendMessage(string.format(memberCount))
end
end)
 ]]

-- debug clipboard, useless
-- mostly store emojis here

-- for discord emojis, do paste their name here, for custom ones type the emoji in chat, then add at the start \
-- send the message, copy what it shows there.

-- <:doccursed:818668428625182810>
-- <:chivo:818669767043842070>
-- <:wheajajahat:818644418512158723>
-- <:byy2:818671952985980990>
-- <:whephone:818646815590187040>


-- THE MEGACHIVO!
client:on('messageCreate', function(message)
    if message.content == '!megachivo' then
        message.channel:send('https://i.imgur.com/dNwgehI.png')
    end
    end)
-- !Megachivo
client:on('messageCreate', function(message)
    if message.content == '!Megachivo' then
        message.channel:send('https://i.imgur.com/dNwgehI.png')
    end
    end)
-- !MEGACHIVO
client:on('messageCreate', function(message)
    if message.content == '!MEGACHIVO' then
        message.channel:send('https://i.imgur.com/dNwgehI.png')
    end
    end)

-- megakrest url https://cdn.discordapp.com/attachments/776278199306551297/820098171917172746/unknown.png
   
client:on('messageCreate', function(message)
    if message.content == '!megakrest' then
        message.channel:send('https://cdn.discordapp.com/attachments/776278199306551297/820098171917172746/unknown.png')
    end
    end)
client:on('messageCreate', function(message)
    if message.content == '!Megakrest' then
        message.channel:send('https://cdn.discordapp.com/attachments/776278199306551297/820098171917172746/unknown.png')
    end
    end)
client:on('messageCreate', function(message)
    if message.content == '!MEGAKREST' then
        message.channel:send('https://cdn.discordapp.com/attachments/776278199306551297/820098171917172746/unknown.png')
    end
    end)


-- Help menu
client:on('messageCreate', function(message)
    if message.author.bot then return end
	if message.content == '!help' then
		--message.channel:send('***Anti Tony 2000 Help Menu:***\n**!help =**  Displays the menu you are in right now.\n**!ping =** Pong!.\n**!pong =** Ping!. <:doccursed:818668428625182810>\n**!uptime =** Displays the bot\'s uptime.\n**!kick =** Kick\'s a user.\n**!ban =** Ban\'s a user.\n**!megachivo =** THE ONE AND ONLY!, THE MEGACHIVO!!')
		message.channel:send('***Anti Tony 2000 Help Menu:***\n**!help =**  Displays the menu you are in right now.\n**!ping =** Pong!.\n**!pong =** Ping!. <:doccursed:818668428625182810>\n**!ban =** Ban\'s a user.\n**!megachivo =** THE ONE AND ONLY!, THE MEGACHIVO!!')

    end
end)

client:run('Bot Njk4NTg0MzQ5NjgyOTU4NDE4.XpH9YA.5gxE856qYiXICsrD_yM0_ywYftc')
