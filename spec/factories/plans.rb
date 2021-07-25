FactoryBot.define do
  factory :plan do
    country { "[\"インド\"]" }
    days { "one_week" }
    departure_date { Date.today + 20 }
    association :user
  end
end
