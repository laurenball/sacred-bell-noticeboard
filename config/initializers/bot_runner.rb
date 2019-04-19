$bot_runner = BotRunner.new

unless Rails.env.test?
  $bot_runner.call
end
