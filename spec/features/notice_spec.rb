require 'rails_helper'

RSpec.feature "Notices", type: :feature do
  let(:new_path) { polymorphic_path([:new, :notice]) }

  describe 'create' do
    let(:primary_channel) { instance_double(Discordrb::Channel, send_message: true) }

    before do
      allow_any_instance_of(BotRunner).to receive(:primary_channel).and_return(primary_channel)

      visit new_path
      fill_in_notice_creation_fields
    end

    def fill_in_notice_creation_fields
      fill_in 'Title', with: 'Adventure'
      fill_in 'Sessions', with: 1
      fill_in 'Openings', with: 3
      fill_in 'Author', with: 'A Dude'
      fill_in 'Notes', with: 'Come get this baby'
      fill_in 'Reward', with: '...a baby?'
      fill_in 'Requester', with: 'Reluctant Parent'
    end

    it do
      click_on 'do the thing' 

      expect(page).to have_content('Notice was successfully created')
    end

    context 'discord' do
      before { allow(primary_channel).to receive(:send_message) }

      it do
        click_on 'do the thing' 

        expect(primary_channel).to have_received(:send_message)
      end
    end
  end
end
