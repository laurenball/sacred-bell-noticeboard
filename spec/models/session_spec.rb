require 'rails_helper'

RSpec.describe Session, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to(:notice) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:date) }
    it { is_expected.to validate_presence_of(:time) }
    it { is_expected.to validate_presence_of(:location) }
  end
end
