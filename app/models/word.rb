class Word < ApplicationRecord
  has_many :definitions

  validates :word, presence: true, length: { maximum: 255 }
end
