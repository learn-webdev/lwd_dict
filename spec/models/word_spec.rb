require 'rails_helper'
require 'faker'

RSpec.describe Word, type: :model do
  describe 'validations' do
    it 'allows valid values for word' do
      word = Word.new(word: Faker::Lorem.word())
      expect(word.valid?).to eq(true), "test failed with #{word.word}"
    end

    it 'disallows invalid values for word' do
      word = Word.new(word: nil)
      expect(word.valid?).to eq(false)
      word = Word.new(word: Faker::Lorem.characters(256))
      expect(word.valid?).to eq(false), "test failed with word #{word.word}"
    end
  end
end
