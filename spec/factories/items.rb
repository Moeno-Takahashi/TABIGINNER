FactoryBot.define do
  factory :item do
    sequence(:category_id) { |n| n }
    sequence(:title) { |n| "item-title-sample#{n}" }
    sequence(:body) { |n| "item-body-sample#{n}" }
  end
end
