require 'discordrb'
require 'thread'

$bot_thread = Thread.new do
  $bot = Discordrb::Bot.new(
    token: ENV['discord_token'],
    client_id: ENV['discord_client_id']
  )

  $bot.run
end
