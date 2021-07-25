FactoryBot.define do
  factory :line_user do
    uid { "test" }
    association :user
  end
end
