namespace :reminder_task do
  desc '出発日の0日前になったユーザーに確認メールを送信'
  task  linebot_remain_days_zero: :environment do
    webhook = WebhookController.new
    puts webhook.zero
  end
  desc '出発日の1日前になったユーザーに確認メールを送信'
  task  linebot_remain_days_one: :environment do
    webhook = WebhookController.new
    puts webhook.one
  end
  desc '出発日の2日前になったユーザーに確認メールを送信'
  task  linebot_remain_days_two: :environment do
    webhook = WebhookController.new
    puts webhook.two
  end
  desc '出発日の3日前になったユーザーに確認メールを送信'
  task  linebot_remain_days_three: :environment do
    webhook = WebhookController.new
    puts webhook.three
  end
  desc '出発日の4日前になったユーザーに確認メールを送信'
  task  linebot_remain_days_four: :environment do
    webhook = WebhookController.new
    puts webhook.four
  end
  desc '出発日の5日前になったユーザーに確認メールを送信'
  task  linebot_remain_days_five: :environment do
    webhook = WebhookController.new
    puts webhook.five
  end
  desc '出発日の6日前になったユーザーに確認メールを送信'
  task  linebot_remain_days_six: :environment do
    webhook = WebhookController.new
    puts webhook.six
  end
  desc '出発日の7日前になったユーザーに確認メールを送信'
  task  linebot_remain_days_seven: :environment do
    webhook = WebhookController.new
    puts webhook.seven
  end
  desc '出発日の8日前になったユーザーに確認メールを送信'
  task  linebot_remain_days_eight: :environment do
    webhook = WebhookController.new
    puts webhook.eight
  end
  desc '出発日の9日前になったユーザーに確認メールを送信'
  task  linebot_remain_days_nine: :environment do
    webhook = WebhookController.new
    puts webhook.nine
  end
  desc '出発日の10日前になったユーザーに確認メールを送信'
  task  linebot_remain_days_ten: :environment do
    webhook = WebhookController.new
    puts webhook.ten
  end
  desc '出発日の11日前になったユーザーに確認メールを送信'
  task  linebot_remain_days_eleven: :environment do
    webhook = WebhookController.new
    puts webhook.eleven
  end
  desc '出発日の12日前になったユーザーに確認メールを送信'
  task  linebot_remain_days_twelve: :environment do
    webhook = WebhookController.new
    puts webhook.twelve
  end
  desc '出発日の13日前になったユーザーに確認メールを送信'
  task  linebot_remain_days_thirteen: :environment do
    webhook = WebhookController.new
    puts webhook.thirteen
  end
  desc '出発日の14日前になったユーザーに確認メールを送信'
  task  linebot_remain_days_fourteen: :environment do
    webhook = WebhookController.new
    puts webhook.fourteen
  end
end
