User.create!(
  [
    {
      id: 1,
      last_name: 'testname',
      first_name: 'testname',
       birthday: '2021/01/01',
      email: 'tabiginner@example.com',
      sex: 'male',
      password: '12345678',
      password_confirmation: '12345678'
    },
    {
      id: 2,
      last_name: 'guest',
      first_name: 'guest',
      birthday: '2021/01/01',
      email: 'guest@example.com',
      sex: 'male',
      password: '12345678',
      password_confirmation: '12345678'
    }
  ]
)

Task.create!(
  [
    {  
      user_id: 1,
      category_id: 1,
      title: 'パスポートの申請・取得',
      body: '取得には申請から最低１週間は必要であるため、余裕を持って手続きを進めよう！全国のパスポートセンターで申請・取得できるよ！'
    },
    { 
      user_id: 1,
      category_id: 1,
      title: 'パスポートの残存有効期間確認',
      body: '訪問する国によって、必要な残存有効期間に違いがあるため、残存有効期間が短い人は注意が必要！「残存有効期間は6ヶ月以上」というのが鉄則!'
    },
    { 
      user_id: 1,
      category_id: 2,
      title: '旅程を簡単に組んでみる',
      body: '訪れる町を一筆書きで、なるべく同じ道を往復しないよう、無駄が無い最短距離で繋いでみよう。一番最初の町と一番最後の町は、空港がある大きめの町にすると良い。'
    },
    { 
      user_id: 1,
      category_id: 2,
      title: '1日ごとの予定を立てる',
      body: '「何も予定を立てない」というのもバックパッカーの旅らしくて良いが、限られた日数で最大限楽しむには予定を事前に考えておいた方が良い。'
    },
    { 
      user_id: 1,
      category_id: 3,
      title: 'ビザの要否確認 ※トランジットの国も含む',
      body: '観光目的でのビザ不要の国も多いが、それには条件があるため入念に調べておこう！'
    },
    { 
      user_id: 1,
      category_id: 3,
      title: 'ビザの申請・取得',
      body: '取得には最低でも１週間程度かかり、大使館やオンラインで申請できるよ！余裕を持って手続きを進めよう！'
    },
    { 
      user_id: 1,
      category_id: 4,
      title: '航空券の予約',
      body: 'スカイスキャナーで予約する方法が安くておすすめ！LCC利用で荷物を機内持ち込み（無料）にする場合は重量や大きさなどの条件も併せて確認しておこう！'
    },
    { 
      user_id: 1,
      category_id: 5,
      title: '予防接種の要否確認',
      body: '渡航先によって異なるが、入国の際に証明書の提示を求められることもあるため、要否の判断は慎重に行おう！'
    },
    { 
      user_id: 1,
      category_id: 5,
      title: '予防接種の予約',
      body:  '予防接種の種類によっては、数回(2～3回)接種する必要のあるものもあるため、なるべく早く（数ヶ月前）から予約しましょう！'
    },
    { 
      user_id: 1,
      category_id: 5,
      title: '予防接種をする',
      body: '日本検疫衛生協会や病院で接種できるよ！'
    },
    { 
      user_id: 1,
      category_id: 6,
      title: '旅全体の費用を簡単に算出する',
      body: '旅行期間と渡航先の物価からおおよその費用は算出可能なので、あらかじめ費用の目安をつけておこう！'
    },
    { 
      user_id: 1,
      category_id: 6,
      title: '国際キャッシュカード・クレジットカードの取得',
      body: '全てのお金を現金で持ち歩くことのないように、万が一お金が足りなくなった時のために、しっかり準備しておこう！クレジットカードには無料で海外旅行保険付帯のものもあるのでチェックしておこう！'
    },
    { 
      user_id: 1,
      category_id: 6,
      title: 'レートの読み方をマスターする',
      body: '両替所によってレートが違うので、読めるようになっておくと良いレートで両替ができて節約になるよ！'
    },
    { 
      user_id: 1,
      category_id: 6,
      title: '通貨両替の場所と方法のイメージトレーニング',
      body: '日本で先に両替しておくのか、渡航先に着いてから両替するのか考えておこう！ちなみに現地で両替をした方が、レートは良いよ！'
    },
    { 
      user_id: 1,
      category_id: 7,
      title: 'データローミングのオフ設定',
      body: 'データローミングとは、契約している携帯会社の電波圏外にいるときでも自動的に通信を行えるようにする機能。スマホの設定画面から簡単に変更することができるよ！出発直前でOK！この設定をせず、渡航先で通信機能を使ってしまうと高額な請求がきてしまうこともあるため要注意！'
    },
    { 
      user_id: 1,
      category_id: 7,
      title: 'Simロック解除(必要な人)',
      body: '海外のsimを使って通信する予定の場合、出国前に契約している携帯会社でsimロック解除の手続きが必要になる。'
    },
    { 
      user_id: 1,
      category_id: 7,
      title: 'レンタルWi-fiの契約(必要な人)',
      body: 'プランや旅行期間によって料金に差はあるが、長期間旅するバックパッカーにとってはお金の負担が大きいかも。誰でも簡単・手軽にネット環境を確保できるため、不安がある人は選択肢の一つに加えても良いでしょう！'
    },
    { 
      user_id: 1,
      category_id: 8,
      title: '防犯対策や渡航先の犯罪例の調査',
      body: '渡航先によって犯罪の種類や傾向は異なり、対策は必須！'
    },
    { 
      user_id: 1,
      category_id: 8,
      title: '防犯グッズの購入（南京錠・自転車用チェーンロックなど）',
      body: '100円ショップなどで揃うものも多いよ！'
    },
    { 
      user_id: 1,
      category_id: 9,
      title: '海外旅行保険に加入するか否か判断する',
      body: '旅にトラブルは付きもの。保険代は惜しまず加入した方が良い！'
    },
    { 
      user_id: 1,
      category_id: 9,
      title: '海外旅行保険の加入手続きをする',
      body: '自分に合った補償内容や料金のプランを選んで加入しよう！'
    },
    { 
      user_id: 1,
      category_id: 10,
      title: '初日の宿の予約をする',
      body: '宿泊料の安い、ゲストハウス・ホステルを利用しよう！旅人との交流の場、現地の情報を集める場としてもおすすめだよ！'
    },
    { 
      user_id: 1,
      category_id: 11,
      title: 'バックパック・サブバックの購入',
      body: 'バックパックは旅行期間に見合う、背負い心地の良いものを。サブバックは防犯・実用面からボディーバックがおすすめだよ！'
    },
    { 
      user_id: 1,
      category_id: 11,
      title: 'その他持ち物の購入・パッキング',
      body: '100円ショップで手に入るものも多いよ！持ち物リストを見ながら揃えていこう！'
    },
    { 
      user_id: 1,
      category_id: 12,
      title: '便利アプリのインストール',
      body: 'オフラインで使えるものなど、インストールしておくと重宝するアプリが本当にたくさんある！逆にないと困るほどのものも多いので、調べて入れておこう！'
    }
  ]
)

Item.create!(
  [
    { 
      user_id: 1,
      category_id: 1,
      title: 'パスポート',
      body: 'これがないと始まらない！旅中、絶対に失くしてはいけないもの！'
    },
    { 
      user_id: 1,
      category_id: 1,
      title: 'パスポートのコピー',
      body: '現地で盗難にあった際にもパスポートのコピーがあれば、再発行手続きがスムーズにできる。'
    },
    { 
      user_id: 1,
      category_id: 1,
      title: '観光ビザ(必要な人)',
      body: 'トランジットなど、経由国の分も忘れずに！'
    },
    { 
      user_id: 1,
      category_id: 1,
      title: 'クレジットカード',
      body: '無料で海外旅行保険が付いているものもあるよ！キャッシング機能が付いているものだと、現地で予算オーバーしても安心。'
    },
    { 
      user_id: 1,
      category_id: 1,
      title: '国際キャッシュカード',
      body: '預金が現地通貨で引き出せるよ！全財産を持ち歩く事のないように、ゲットしておきたい。'
    },
    { 
      user_id: 1,
      category_id: 1,
      title: '財布x2',
      body: '小さめ、軽めのものでOK。100円ショップのもので十分。'
    },
    { 
      user_id: 1,
      category_id: 1,
      title: '現金',
      body: '目的地までの移動など、必要な分は持っておこう！'
    },
    { 
      user_id: 1,
      category_id: 1,
      title: 'コンタクト or メガネ(必要な人)',
      body: '洗浄液やケースも忘れずに。'
    },
    { 
      user_id: 1,
      category_id: 1,
      title: 'バックパック',
      body: 'レインカバー付きのものは雨よけ、防犯、劣化防止にもなって一石三鳥だよ！'
    },
    { 
      user_id: 1,
      category_id: 1,
      title: 'サブバッグ',
      body: '実用面、防犯面からボディーバッグがおすすめ！'
    },
    { 
      user_id: 1,
      category_id: 1,
      title: '海外旅行保険のしおり・保険証書',
      body: '現地での連絡先や、滞在中に受けられるサービスなどが細かく書いてあるため、いざというときのために持っておこう！'
    },
    { 
      user_id: 1,
      category_id: 1,
      title: 'スマートフォン',
      body: 'ネット環境はどのように確保するか考えておこう！'
    },
    { 
      user_id: 1,
      category_id: 2,
      title: 'カメラ(必要な人)',
      body: 'スマホのカメラでも十分だが、カメラがあると更に◎'
    },
    { 
      user_id: 1,
      category_id: 2,
      title: 'Gopro(必要な人)',
      body: '自然など、よりアクティブな旅をしたい人は持っていると◎'
    },
    { 
      user_id: 1,
      category_id: 2,
      title: '充電器',
      body: '全ての電子機器の充電器。'
    },
    { 
      user_id: 1,
      category_id: 2,
      title: 'モバイルバッテリー',
      body: '何個か持っておくと安心だよ！'
    },
    { 
      user_id: 1,
      category_id: 2,
      title: '変換プラグ',
      body: '国によってコンセントの形状が異なるため、目的地の形状を調べて持っていく必要があよ！'
    },
    { 
      user_id: 1,
      category_id: 2,
      title: '変圧器',
      body: '国によってコンセントの電圧が異なるため、日本の電化製品向けに電圧を変換する。製品によっては必要のない場合も多いよ！'
    },
    { 
      user_id: 1,
      category_id: 2,
      title: '延長コード',
      body: 'ゲストハウスなどには近くにコンセントがない可能性があるので、持っていると重宝するよ。'
    },
    { 
      user_id: 1,
      category_id: 2,
      title: 'イヤホン',
      body: '移動中に持っていると◎'
    },
    { 
      user_id: 1,
      category_id: 3,
      title: '洗濯用洗剤',
      body: '現地調達も可能。'
    },
    { 
      user_id: 1,
      category_id: 3,
      title: 'シャンプー',
      body: '荷物を機内持ち込みにする場合は液体は100ml以下のボトルに詰めると良いよ！'
    },
    { 
      user_id: 1,
      category_id: 3,
      title: 'リンス'
    },
    { 
      user_id: 1,
      category_id: 3,
      title: 'ボディーソープ'
    },
    { 
      user_id: 1,
      category_id: 3,
      title: '化粧水'
    },
    { 
      user_id: 1,
      category_id: 3,
      title: '乳液'
    },
    { 
      user_id: 1,
      category_id: 3,
      title: 'バスタオル×1'
    },
    { 
      user_id: 1,
      category_id: 3,
      title: 'フェイスタオル×２'
    },
    { 
      user_id: 1,
      category_id: 3,
      title: '歯ブラシ・歯磨き粉',
      body: 'コップ付きのものだとより便利だよ！'
    },
    { 
      user_id: 1,
      category_id: 3,
      title: 'トイレットペーパー or ティッシュ',
      body: '海外ではトイレに紙がないことが多いため、持っていた方が良い！'
    },
    { 
      user_id: 1,
      category_id: 3,
      title: 'ウェットティッシュ',
      body: 'さっと手を拭くなど持っていると、何かと便利だよ！'
    },
    { 
      user_id: 1,
      category_id: 3,
      title: '南京錠',
      body: '防犯用・バックパックに付けておこう！'
    },
    { 
      user_id: 1,
      category_id: 3,
      title: '自転車用チェーンロック',
      body: '防犯用。夜行バスで寝ている時など、どうしても荷物から目を離してしまう時に使うよ！'
    },
    { 
      user_id: 1,
      category_id: 3,
      title: 'サングラス',
      body: 'オシャレ用ではなく、日差しの強い場所に行く時には必ず必要になるよ！'
    },
    { 
      user_id: 1,
      category_id: 3,
      title: '日焼け止め',
      body: '行く場所の気候に関わらず、絶対に持って行った方が良いアイテム。'
    },
    { 
      user_id: 1,
      category_id: 3,
      title: '圧縮袋',
      body: '衣類などをコンパクトに持っていくための工夫。'
    },
    { 
      user_id: 1,
      category_id: 4,
      title: '頭痛薬',
      body: '普段から頭痛持ちの人は特に必要だよ！'
    },
    { 
      user_id: 1,
      category_id: 4,
      title: '下痢止め',
      body: '食べ物や水が合わないことも多いため、持っておくと安心。'
    },
    { 
      user_id: 1,
      category_id: 4,
      title: '酔い止め(必要な人)',
      body: '乗り物酔いしやすい人は持っておくと◎'
    },
    { 
      user_id: 1,
      category_id: 4,
      title: '虫除けスプレー(必要な人)',
      body: '暖かい地域は特に必要になるかも！現地調達可能！'
    },
    { 
      user_id: 1,
      category_id: 5,
      title: '半袖Tシャツ×３',
      body: '女性はワンピースも◎'
    },
    { 
      user_id: 1,
      category_id: 5,
      title: '長袖Tシャツ or 薄手のパーカー',
      body: '夜は冷えることも多いため。'
    },
    { 
      user_id: 1,
      category_id: 5,
      title: '長ズボン×1',
      body: '軽めの素材がおすすめ。'
    },
    { 
      user_id: 1,
      category_id: 5,
      title: '短パン×２',
      body: '軽めの素材がおすすめ。'
    },
    { 
      user_id: 1,
      category_id: 5,
      title: 'スポーツサンダル',
      body: '日中歩き回るのに最適。'
    },
    { 
      user_id: 1,
      category_id: 5,
      title: 'ビーチサンダル',
      body: '宿のシャワーを使う時など、床が汚いことが多いため重宝するよ！'
    },
    { 
      user_id: 1,
      category_id: 5,
      title: 'スニーカー'
    },
    { 
      user_id: 1,
      category_id: 5,
      title: '下着 3~4セット'
    },
    { 
      user_id: 1,
      category_id: 5,
      title: '靴下×3'
    },
    { 
      user_id: 1,
      category_id: 5,
      title: '水着',
      body: '水遊びする人は持っていると◎現地調達できることも多いよ！'
    },
    { 
      user_id: 1,
      category_id: 5,
      title: '帽子',
      body: '日差しが強い場所ではマストアイテム！'
    },
    { 
      user_id: 1,
      category_id: 6,
      title: 'アウター',
      body: 'マウンテンパーカーがおすすめだよ！'
    },
    { 
      user_id: 1,
      category_id: 6,
      title: 'ダウンジャケット',
      body: '小さく収納できるものが良いよ！'
    },
    { 
      user_id: 1,
      category_id: 6,
      title: 'ヒートテック上下×3',
      body: '下はタイツなどでも良いよ！'
    },
    { 
      user_id: 1,
      category_id: 6,
      title: 'セーター or フリース or スウェット×3',
      body: '軽めの素材がおすすめだよ！'
    },
    { 
      user_id: 1,
      category_id: 6,
      title: '長ズボン×3'
    },
    { 
      user_id: 1,
      category_id: 6,
      title: 'ビーチサンダル',
      body: '宿のシャワーを使う時など、床が汚いことが多いため重宝するよ！'
    },
    { 
      user_id: 1,
      category_id: 6,
      title: '登山シューズ',
      body: '暖かく、どんな場面にも使えて便利だよ！'
    },
    { 
      user_id: 1,
      category_id: 6,
      title: 'スニーカー'
    },
    { 
      user_id: 1,
      category_id: 6,
      title: '靴下×3',
      body: '長め・厚めのものがおすすめだよ！'
    },
    { 
      user_id: 1,
      category_id: 6,
      title: '手袋',
      body: 'あった方が◎'
    },
    { 
      user_id: 1,
      category_id: 6,
      title: 'ニット帽',
      body: '耳を隠すためにあった方が◎'
    },
    { 
      user_id: 1,
      category_id: 6,
      title: 'ホッカイロ',
      body: 'かなり重宝するよ！'
    },
    { 
      user_id: 1,
      category_id: 7,
      title: 'マスク',
      body: '飛行機の中や就寝時に大活躍するよ！'
    },
    { 
      user_id: 1,
      category_id: 7,
      title: 'ネックピロー',
      body: '飛行機など移動で活躍、ポンプ式のものが良いよ！'
    },
    { 
      user_id: 1,
      category_id: 7,
      title: 'アイマスク',
      body: '飛行機の中や就寝時に活躍するよ！'
    },
    { 
      user_id: 1,
      category_id: 7,
      title: '耳栓',
      body: '飛行機の中や就寝時に活躍するよ！'
    },
    { 
      user_id: 1,
      category_id: 7,
      title: 'ビニール袋×5',
      body: '汚れものやゴミ入れ用にあると便利だよ！'
    },
    { 
      user_id: 1,
      category_id: 7,
      title: 'エコバック or ポリ巾着袋',
      body: '汚れ物や濡れ物入れなど、何かと大活躍するよ！'
    },
    { 
      user_id: 1,
      category_id: 7,
      title: '筆記用具（ペン・ノート）',
      body: '入国カードを書く時など、持っておいて損はない！'
    },
    { 
      user_id: 1,
      category_id: 7,
      title: '書類ケース',
      body: '書類系の荷物が意外とたまるため、持っていると◎'
    },
    { 
      user_id: 1,
      category_id: 7,
      title: 'ストール',
      body: 'イスラム圏で重宝。羽織、ひざ掛けとしても使えるので持っていて損はない！'
    },
    { 
      user_id: 1,
      category_id: 7,
      title: 'カッパ・折り畳み傘',
      body: '急な雨にも持っておくと安心。'
    },
    { 
      user_id: 1,
      category_id: 7,
      title: 'S字フック',
      body: '荷物をかける場所がない時などに！'
    },
    { 
      user_id: 1,
      category_id: 7,
      title: 'ロープ',
      body: '洗濯物を干す用。細めのものでOK！'
    },
    { 
      user_id: 1,
      category_id: 7,
      title: 'ピンチ',
      body: '洗濯用に！'
    },
    { 
      user_id: 1,
      category_id: 7,
      title: '折りたたみハンガー',
      body: '洗濯用に！'
    }
  ]
)
