require 'rails_helper'

RSpec.describe Notice, type: :model do
  describe 'associations' do
    it { is_expected.to have_many(:sessions) }

    it { is_expected.to accept_nested_attributes_for(:sessions) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:openings) }
  end
end
