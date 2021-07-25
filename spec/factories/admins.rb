FactoryBot.define do
  factory :admin do
    line_messaging_id { 1 }
    line_messaging_secret { "MyString" }
    line_messaging_token { "MyString" }
    line_login_id { 1 }
    line_login_secret { "MyString" }
  end
end
