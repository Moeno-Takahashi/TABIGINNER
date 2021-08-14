FactoryBot.define do
  factory :user do
    last_name { 'lastname' }
    first_name  { 'firstname' }
    birthday {'2021/01/01'}
    email { Faker::Internet.email }
    sex { 'male' }
    password { '12345678' }
    password_confirmation { '12345678' }
  
    trait :user_with_tasks do
      after(:build) do |user|
        user.tasks  << build(:task)
      end
    end
  
    trait :user_has_plan do
      after(:build) do |user|
        create(:plan, user: user)
      end
      status {3}
    end

    trait :user_not_have_days do
      after(:build) do |user|
        create(:plan, days: nil, departure_date: nil, user: user)
      end
      status {1}
    end

    trait :user_not_have_departure_date do
      after(:build) do |user|
        create(:plan, departure_date: nil, user: user)
      end
      status {2}
    end

    trait :user_with_image do
      user_image {'user_image.jpg'}
    end

    trait :user_is_line_user do
      after(:build) do |user|
        create(:line_user, user: user)
      end
      status {4}
    end
  end
end

