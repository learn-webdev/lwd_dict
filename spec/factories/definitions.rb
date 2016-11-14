require 'faker'

FactoryGirl.define do
  factory :definition do
    definition Faker::Lorem.sentence()
    word
  end
end
