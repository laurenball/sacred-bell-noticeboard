require 'rails_helper'

RSpec.describe BotRunner do
  let(:bot_runner) { BotRunner.new }

  describe '#initialize' do
    it { expect(bot_runner.bot).to_not be_nil }
  end

  describe '#call' do
    before { allow(Thread).to receive(:new).and_return(nil) }

    it 'creates a thread' do
      bot_runner.call
      expect(Thread).to have_received(:new)
    end
  end
end

