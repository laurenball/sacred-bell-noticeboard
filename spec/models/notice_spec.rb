require 'rails_helper'

RSpec.describe Notice, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:sessions) }
    it { is_expected.to validate_presence_of(:openings) }
  end
end
