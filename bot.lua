-- The reason I wrote this bot in Lua, is because it could be possibly ported to lpp-vita :D
local discordia = require('discordia')
local client = discordia.Client()



client:on('ready', function()
	print('Logged in as '.. client.user.username)
end)


-- Set's the Status


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


-- ban command, stolen example :D
client:on('messageCreate', function(message)
    if message.author.bot then return end
  
    if message.content:sub(1, 4) == '!ban' then
      local author = message.guild:getMember(message.author.id)
      local member = message.mentionedUsers.first
  
      if not member then
        message:reply('You forgot to mention someone to ban. <:whephone:818646815590187040>')
        return
      elseif not author:hasPermission("banMembers") then
        -- The user does not have enough permissions
        message:reply('I\'m afraid you can\'t ban people... :person_shrugging:')
        return
      end
  
      for user in message.mentionedUsers:iter() do
        member = message.guild:getMember(user.id)
        if author.highestRole.position > member.highestRole.position then
          --member:ban()
          message:reply('[insert user here] was banned! <:wheajajahat:818644418512158723>')
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



  client:on('messageCreate', function(message)

    -- bots cant use it
    if message.author.bot then return end
    if message.content == '!debug' then
    --regular plebs cant use it
    local author = message.guild:getMember(message.author.id)
    print('Message Author was' .. author)
    if author ~= 496423458524102665 then
    message.channel:send('You can\'t use that, butthead!') 
    else
        if author == 496423458524102665 then
        message.channel:send('Random debug command goes here, working on megachivo, youll get 3 chivos now <:chivo:818669767043842070> <:chivo:818669767043842070> <:chivo:818669767043842070>')
	end
end
end
end)
client:on('messageCreate', function(message)
if message.content == '!debug2' then
    message.channel:send('I\'m afraid you can\'t ban people... :person_shrugging:')
end
end)


-- debug clipboard, useless
-- mostly store emojis here

-- <:doccursed:818668428625182810>
-- <:chivo:818669767043842070>
-- <:wheajajahat:818644418512158723>
-- <:byy2:818671952985980990>
-- <:whephone:818646815590187040>



-- Help menu
client:on('messageCreate', function(message)
    if message.author.bot then return end
	if message.content == '!help' then
		message.channel:send('***Anti Tony 2000 Help Menu:***\n**!help =**  Displays the menu you are in right now.\n**!ping =** Pong!.\n**!pong =** Ping!. <:doccursed:818668428625182810>\n**!uptime =** Displays the bot\'s uptime.\n**!kick =** Kick\'s a user.\n**!ban =** Ban\'s a user.')
	end
end)

client:run('Bot Njk4NTg0MzQ5NjgyOTU4NDE4.XpH9YA.5gxE856qYiXICsrD_yM0_ywYftc')