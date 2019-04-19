$bot_runner = BotRunner.new

if Rails.env.production?
  $bot_runner.call
end
