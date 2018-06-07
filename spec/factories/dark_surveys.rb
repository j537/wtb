FactoryBot.define do
  factory :dark_survey do
    user
    is_it_dark { Faker::Boolean.boolean }
    are_you_afraid { Faker::Boolean.boolean }
    afraid_of_what { Faker::Lebowski.quote }
  end
end
