class Word < ApplicationRecord
  validates :word, presence: true, length: { maximum: 255 }
end
