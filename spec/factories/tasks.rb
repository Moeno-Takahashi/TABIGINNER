FactoryBot.define do
  factory :task do
    sequence(:category_id) { |n| n }
    sequence(:title) { |n| "task-title-sample#{n}" }
    sequence(:body) { |n| "task-body-sample#{n}" }
  end
end
