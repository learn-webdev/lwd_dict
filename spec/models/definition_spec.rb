require 'rails_helper'

RSpec.describe Definition, type: :model do
  describe 'validations' do
    it 'allows valid values for definition' do
      definition = build(:definition)
      expect(definition.valid?).to eq(true)
    end

    it 'disallows invalid values for definition' do
      definition = build(:definition, word_id: nil)
      expect(definition.valid?).to eq(false)

      definition = build(:definition, definition: nil)
      expect(definition.valid?).to eq(false)
    end
  end
end
