class Definition < ApplicationRecord
  belongs_to :word

  validates :word, presence: true
  validates :definition, presence: true
end
