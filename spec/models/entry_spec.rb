require 'rails_helper'

RSpec.describe Entry, type: :model do
  it { is_expected.to validate_length_of(:title).is_at_least(3).with_message('is too short (minimum is 3 characters)') }
end

RSpec.describe Entry do
  describe 'validation' do
    it 'validates content minumim length' do
      entry = Entry.new
      entry.title = 'abc'
      entry.content = '123'
      result = entry.valid?
      expect(result).to eq false
      error = entry.errors.any?
      expect(error).to eq true
      msgs = entry.errors.full_messages.first
      expect(msgs).to eq 'Content is too short (minimum is 5 characters)'
      entry2 = Entry.new
      entry2.title = 'abc'
      entry2.content = '12345'
      result2 = entry2.valid?
      expect(result2).to eq true
    end
  end
end
