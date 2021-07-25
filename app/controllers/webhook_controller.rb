class WebhookController < ApplicationController
  def zero
    user_with_departure_date
    @zero_target_person =  []
    
    @user_with_departure_date.each do |user|
      if (user.plan.departure_date - @today).to_i == 0
        @zero_target_person << user
      else
        @not_target_person = user
      end
    end
    message = {
            "type": "text",
            "text": "旅人になるまであと...0日！！\n\n今日から貴方はバックパッカー！\n\n旅先には新たな出会いや発見、感動がきっとたくさんあるはずです。是非、あらゆるものから刺激を受けて、出来るだけたくさんのものを見てきてください。感じてきてください。\n\nそのためには、臆せず、全力で楽しみましょう！面白がりましょう！そうすることで、貴方の今までの常識や価値観が、変化していくはずです。\n\nそしてその変化は、貴方を成長させ、人生を豊かにしてくれるでしょう。\n\nまた、旅で一番大切なことは、”安全に帰ってくること”です。危険な目に遭うことのないよう、安全には細心の注意を！\n\nさあ、勇気を持って、新たな一歩を踏み出しましょう！幸運を祈っています。\n\nいってらっしゃい！！"
           }
    client = Line::Bot::Client.new { |config|
              config.channel_secret = ENV["LINE_CHANNEL_SECRET"]
              config.channel_token = ENV["LINE_CHANNEL_TOKEN"]
           }
    @zero_target_person.each do |user|
      client.push_message(user.line_user.uid, message)
    end
  end

  def one
    user_with_departure_date
    @one_target_person =  []
    
    @user_with_departure_date.each do |user|
      if (user.plan.departure_date - @today).to_i == 1
        @one_target_person << user
      else
        @not_target_person = user
      end
    end
    message = {
            "type": "text",
            "text": "旅人になるまであと...1日！！\n\n出発まであと1日となりました。\n\n心の準備はできていますか？不安な気持ちもあると思いますが、今日までしっかり準備してきた貴方なら大丈夫。\n\n今日は十分に体を休めて、明日に備えましょう！"
           }
    client = Line::Bot::Client.new { |config|
              config.channel_secret = ENV["LINE_CHANNEL_SECRET"]
              config.channel_token = ENV["LINE_CHANNEL_TOKEN"]
           }
    @one_target_person.each do |user|
      client.push_message(user.line_user.uid, message)
    end
  end

  def two
    user_with_departure_date
    @two_target_person =  []
    
    @user_with_departure_date.each do |user|
      if (user.plan.departure_date - @today).to_i == 2
        @two_target_person << user
      else
        @not_target_person = user
      end
    end
    message = {
            "type": "text",
            "text": "旅人になるまであと...2日！！\n\n出発まであと2日となりました。\n\n便利アプリのインストールはできていますか？アプリには旅先で役に立つものが本当にたくさんあります。\n\nインストールしておくだけで、よりスムーズに安心して旅ができます。特にオフラインで使えるものはおすすめです。\n\n＊バックパッカーアプリ紹介サイト＊\n\nhttps://metabon1975.com/travel-app/ \n\nhttps://tabippo.net/travel_app/ "
           }
    client = Line::Bot::Client.new { |config|
              config.channel_secret = ENV["LINE_CHANNEL_SECRET"]
              config.channel_token = ENV["LINE_CHANNEL_TOKEN"]
           }
    @two_target_person.each do |user|
      client.push_message(user.line_user.uid, message)
    end
  end

  def three
    user_with_departure_date
    @three_target_person =  []
    
    @user_with_departure_date.each do |user|
      if (user.plan.departure_date - @today).to_i == 3
        @three_target_person << user
      else
        @not_target_person = user
      end
    end
    message = {
            "type": "text",
            "text": "旅人になるまであと...3日！！\n\n出発まであと3日となりました。\n\nパッキングはできていますか？\n\n また、荷物の重量は飛行機の規定範囲内に収まっていますか？\n\n荷物の量が多すぎてしまう場合は、現地調達を検討しても良いかもしれません。"
           }
    client = Line::Bot::Client.new { |config|
              config.channel_secret = ENV["LINE_CHANNEL_SECRET"]
              config.channel_token = ENV["LINE_CHANNEL_TOKEN"]
           }
    @three_target_person.each do |user|
      client.push_message(user.line_user.uid, message)
    end
  end

  def four
    user_with_departure_date
    @four_target_person =  []
    
    @user_with_departure_date.each do |user|
      if (user.plan.departure_date - @today).to_i == 4
        @four_target_person << user
      else
        @not_target_person = user
      end
    end
    message = {
            "type": "text",
            "text": "旅人になるまであと...4日！！\n\n出発まであと4日となりました。\n\n防犯対策はしっかりできていますか？国によって治安・犯罪の傾向に違いがあります。\n\nそれらを事前に調べて対策をしておけば、犯罪に巻き込まれることを防ぐことができます。\n\n更に、目的地の現在の国勢はどうか、親日国かどうかということも知っておくと良いでしょう！\n\nまた、ぼったくり被害に遭わないために、タクシーやツアーなどの料金相場は事前に調べておくと良いかもしれません。\n\n到着してからも、身の回りの安全には常に気を配っておきましょう！"
           }
    client = Line::Bot::Client.new { |config|
              config.channel_secret = ENV["LINE_CHANNEL_SECRET"]
              config.channel_token = ENV["LINE_CHANNEL_TOKEN"]
           }
    @four_target_person.each do |user|
      client.push_message(user.line_user.uid, message)
    end
  end

  def five
    user_with_departure_date
    @five_target_person =  []
    
    @user_with_departure_date.each do |user|
      if (user.plan.departure_date - @today).to_i == 5
        @five_target_person << user
      else
        @not_target_person = user
      end
    end
    message = {
            "type": "text",
            "text": "旅人になるまであと...5日！！\n\n出発まであと5日となりました。\n\n初日の宿の予約はしてありますか？特に到着時刻が夜の場合などは予約は必須です。(夜到着なら無理に市街地に向かわず、空港近くの宿をとっておくと安全面で良い！)\n\n\n\n＊アドバイス＊\n\n日本人ゲストハウスが目的地の近くにあるか、事前に把握しておくと良いでしょう！\n\n日本人ゲストハウスは、宿泊客に日本人が多かったり、オーナーさんが日本人だったりするので、何か困った事があれば相談しやすいかもしれません。\n\nまた、初日の宿に日本人ゲストハウスを選んでおけば、現地の情報が到着したその日に入手できて、幸先の良い旅になるでしょう！\n\n\n\n＊予約サイト＊\n\n・ブッキングドットコム ←料金比較ができるため、節約にもなっておすすめ！(アプリ版推奨)\nhttps://www.booking.com/index.ja.html\n\n・エアビーアンドビー\nhttps://www.airbnb.jp/"
           }
    client = Line::Bot::Client.new { |config|
              config.channel_secret = ENV["LINE_CHANNEL_SECRET"]
              config.channel_token = ENV["LINE_CHANNEL_TOKEN"]
           }
    @five_target_person.each do |user|
      client.push_message(user.line_user.uid, message)
    end
  end

  def six
    user_with_departure_date
    @six_target_person =  []
    
    @user_with_departure_date.each do |user|
      if (user.plan.departure_date - @today).to_i == 6
        @six_target_person << user
      else
        @not_target_person = user
      end
    end
    message = {
            "type": "text",
            "text": "旅人になるまであと...6日！！\n\n出発まであと6日となりました。\n\n外貨の両替場所や方法は決まっていますか？\n\n慌てることのないよう、事前にイメージトレーニングしておきましょう！"
           }
    client = Line::Bot::Client.new { |config|
              config.channel_secret = ENV["LINE_CHANNEL_SECRET"]
              config.channel_token = ENV["LINE_CHANNEL_TOKEN"]
           }
    @six_target_person.each do |user|
      client.push_message(user.line_user.uid, message)
    end
  end

  def seven
    user_with_departure_date
    @seven_target_person =  []
    
    @user_with_departure_date.each do |user|
      if (user.plan.departure_date - @today).to_i == 7
        @seven_target_person << user
      else
        @not_target_person = user
      end
    end
    message = {
            "type": "text",
            "text": "旅人になるまであと...7日！！\n\n出発まであと7日となりました。\n\nネット環境の準備はできていますか？\n\nレンタルWiFiを契約する、現地のSimを使う、契約会社の海外プランを使うetc...など、方法はいくつかあります。現地のフリーWiFiのみで旅する強者バックパッカーも居ますが、初めは準備していくのがおすすめです。\n\n旅費を最低限に抑えたいならば、現地のSimを使うのは料金が安いことも多いため、特におすすめです。\n\n高額な請求が来ないよう、出発前のデータローミングのオフ設定は忘れずにしましょう！"
           }
    client = Line::Bot::Client.new { |config|
              config.channel_secret = ENV["LINE_CHANNEL_SECRET"]
              config.channel_token = ENV["LINE_CHANNEL_TOKEN"]
           }
    @seven_target_person.each do |user|
      client.push_message(user.line_user.uid, message)
    end
  end

  def eight
    user_with_departure_date
    @eight_target_person =  []
    
    @user_with_departure_date.each do |user|
      if (user.plan.departure_date - @today).to_i == 8
        @eight_target_person << user
      else
        @not_target_person = user
      end
    end
    message = {
            "type": "text",
            "text": "旅人になるまであと...8日！！\n\n出発まであと8日となりました。\n\n海外旅行保険に入っていますか？\n\n旅にトラブルはつきものです。保険代は惜しまずに加入した方が良いでしょう！
"
           }
    client = Line::Bot::Client.new { |config|
              config.channel_secret = ENV["LINE_CHANNEL_SECRET"]
              config.channel_token = ENV["LINE_CHANNEL_TOKEN"]
           }
    @eight_target_person.each do |user|
      client.push_message(user.line_user.uid, message)
    end
  end

  def nine
    user_with_departure_date
    @nine_target_person =  []
    
    @user_with_departure_date.each do |user|
      if (user.plan.departure_date - @today).to_i == 9
        @nine_target_person << user
      else
        @not_target_person = user
      end
    end
    message = {
            "type": "text",
            "text": "旅人になるまであと...9日！！\n\n出発まであと9日となりました。\n\n国際キャッシュカードやクレジットカードは作ってありますか？\n\n全てのお金を持ち歩くことのないよう、準備しておきましょう！\n\n\n\n＊国際キャッシュカード＊\n\n国際キャッシュカードとは、日本の円預金口座から、旅先のATMで現地通貨を引き出すことができる便利なカードです。引き出した現地通貨は日本円に換算され、手数料とともに日本の円預金口座から引き落とされます。\nhttps://first-backpacker.info/preparation/money/33\n\nhttps://tabippo.net/category/purpose/travel-issue/travel_money/travel_cashcard/\n\n\n\n＊クレジットカード＊\n\nhttps://tabippo.net/card/\n\nhttps://hoken-all.co.jp/media/travel-creditcard/"
           }
    client = Line::Bot::Client.new { |config|
              config.channel_secret = ENV["LINE_CHANNEL_SECRET"]
              config.channel_token = ENV["LINE_CHANNEL_TOKEN"]
           }
    @nine_target_person.each do |user|
      client.push_message(user.line_user.uid, message)
    end
  end

  def ten
    user_with_departure_date
    @ten_target_person =  []
    
    @user_with_departure_date.each do |user|
      if (user.plan.departure_date - @today).to_i == 10
        @ten_target_person << user
      else
        @not_target_person = user
      end
    end
    message = {
            "type": "text",
            "text": "旅人になるまであと...10日！！\n\n出発まであと10日となりました。\n\n航空券の用意はできていますか？\n\n航空券を予約する際は、機内持ち込み荷物や受託荷物の重量や規格などをしっかりチェックしておきましょう！\n\nまた、チェックイン時刻なども併せて確認しておきましょう！（間違えると追加で料金が発生、または搭乗できないこともあります。）\n\n\n\n＊アドバイス＊\n\n航空券を節約するためには、\n\n1. 料金比較のできるサイトを使う\n2. シーズン外（航空券が安い時期（国によっても違う））を狙う\n\nなどの方法もありますが、\n\n3. 直行便を使わずに他の国を経由\n\nという方法も、時間に余裕がある人であればおすすめです！\n上手く経由できれば、片道1~2万円節約できるかもしれません！\n\n\n\n＊予約サイト＊\n\n・スカイスキャナー ←料金比較ができるため、節約になるのでおすすめ！(アプリ版推奨)\nhttps://www.skyscanner.jp/"
           }
    client = Line::Bot::Client.new { |config|
              config.channel_secret = ENV["LINE_CHANNEL_SECRET"]
              config.channel_token = ENV["LINE_CHANNEL_TOKEN"]
           }
           @ten_target_person.each do |user|
            client.push_message(user.line_user.uid, message)
          end
  end
  
  def eleven
    user_with_departure_date
    @eleven_target_person =  []
    
    @user_with_departure_date.each do |user|
      if (user.plan.departure_date - @today).to_i == 11
        @eleven_target_person << user
      else
        @not_target_person = user
      end
    end
    message = {
            "type": "text",
            "text": "旅人になるまであと...11日！！\n\n出発まであと11日となりました。\n\n旅の予定は簡単に立ててありますか？\n\n1日ごとの予定も立てておけば、限られた時間の中で最大限に旅を楽しむことができます。\n\n\n\n＊予定の立て方＊\n\n1. 行きたいところをピックアップする\n\n2. ピックアップした場所を一筆書きで繋ぐ\n\n3. 移動方法（交通機関)を検討する\n→ 飛行機・電車・タクシー\n・バス etc...(移動距離が長く、時間と費用も出来るだけ節約したい人は、夜行バスで移動するのもおすすめ！宿代と時間の節約になる！)\n→ 現地の交通情報の入手に困ったら、旅ブログを見ると欲しい情報が手に入りやすい。\n\n4. 目的地周辺の宿を把握する\n→ ホステルやゲストハウスであれば、前日や当日予約でも宿泊可能であることが多い。\n\n※ ツアーなどに参加したい場合は、日本から予約していくよりも、現地のツアー会社や宿泊施設から予約した方がはるかに安い！"
           }
    client = Line::Bot::Client.new { |config|
              config.channel_secret = ENV["LINE_CHANNEL_SECRET"]
              config.channel_token = ENV["LINE_CHANNEL_TOKEN"]
           }
    @eleven_target_person.each do |user|
      client.push_message(user.line_user.uid, message)
    end
  end

  def twelve
    user_with_departure_date
    @twelve_target_person =  []
    
    @user_with_departure_date.each do |user|
      if (user.plan.departure_date - @today).to_i == 12
        @twelve_target_person << user
      else
        @not_target_person = user
      end
    end
    message = {
            "type": "text",
            "text": ""
           }
    client = Line::Bot::Client.new { |config|
              config.channel_secret = ENV["LINE_CHANNEL_SECRET"]
              config.channel_token = ENV["LINE_CHANNEL_TOKEN"]
           }
    @twelve_target_person.each do |user|
      client.push_message(user.line_user.uid, message)
    end
  end

  def thirteen
    user_with_departure_date
    @thirteen_target_person =  []
    
    @user_with_departure_date.each do |user|
      if (user.plan.departure_date - @today).to_i == 13
        @thirteen_target_person << user
      else
        @not_target_person = user
      end
    end
    message = {
            "type": "text",
            "text": ""
           }
    client = Line::Bot::Client.new { |config|
              config.channel_secret = ENV["LINE_CHANNEL_SECRET"]
              config.channel_token = ENV["LINE_CHANNEL_TOKEN"]
           }
    @thirteen_target_person.each do |user|
      client.push_message(user.line_user.uid, message)
    end
  end

  def fourteen
    user_with_departure_date
    @fourteen_target_person =  []
    
    @user_with_departure_date.each do |user|
      if (user.plan.departure_date - @today).to_i == 14
        @fourteen_target_person << user
      else
        @not_target_person = user
      end
    end
    message = {
            "type": "text",
            "text": "旅人になるまであと...14日！！\n\n出発まであと14日となりました。\n\nパスポートとビザの用意はできていますか？\n\n取得には時間がかかるため、まだの人は早めに手続きを進めましょう！\n\n下記のサイトを参考にしてみてください！\n\nパスポートについて\nhttps://www.mofa.go.jp/mofaj/toko/passport/pass_2.html\n\nビザについて\nhttps://www.smbc-card.com/nyukai/magazine/tabisapo/prepare/entry_visa.jsp"
           }
    client = Line::Bot::Client.new { |config|
              config.channel_secret = ENV["LINE_CHANNEL_SECRET"]
              config.channel_token = ENV["LINE_CHANNEL_TOKEN"]
           }
    @fourteen_target_person.each do |user|
      client.push_message(user.line_user.uid, message)
    end
  end


  private

  def user_with_departure_date
    @user_id_with_departure_date = Plan.where.not(departure_date: nil).pluck(:user_id)  
    @user_with_departure_date = User.where(id: @user_id_with_departure_date)
    @today = Date.today
  end

end

