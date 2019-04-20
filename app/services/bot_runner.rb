require 'discordrb'
require 'thread'

class BotRunner
  attr_accessor :bot

  def initialize
    @bot = Discordrb::Bot.new(
      token: ENV['discord_token'],
      client_id: ENV['discord_client_id']
    )
    @thread = nil
  end

  def call
    @thread = Thread.new do
      @bot.run
    end
  end

  def primary_channel
    server = ENV['server_id'].to_i
    @bot.servers[server].channels.select { |c| c.type == 0 && c.position == 0 }.first
  end
end
