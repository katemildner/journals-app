require 'rails_helper'

RSpec.describe Entry do
  describe 'validation' do
    it 'validates title minimum length' do
      entry = Entry.new
      entry.title = 'ab'
      result = entry.valid?
      expect(result).to eq false
      error = entry.errors.any?
      expect(error).to eq true
      msgs = entry.errors.full_messages.first
      expect(msgs).to eq 'Title is too short (minimum is 3 characters)'
      entry2 = Entry.new
      entry2.title = 'abc'
      entry2.content = '12345'
      result2 = entry2.valid?
      expect(result2).to eq true
    end
  end
end
