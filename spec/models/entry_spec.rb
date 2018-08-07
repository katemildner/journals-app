require 'rails_helper'

RSpec.describe Entry, type: :model do
  it { is_expected.to validate_length_of(:title).is_at_least(3).with_message('is too short (minimum is 3 characters)') }
  it { is_expected.to validate_length_of(:content).is_at_least(5).with_message('is too short (minimum is 5 characters)') }
end
