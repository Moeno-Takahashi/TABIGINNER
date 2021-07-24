class CountriesController < PlansController
  before_action :user_plan, only: [:edit, :update]
  def new
    @plan = Plan.new
    @north_america = north_america
    @south_america = south_america
    @asia = asia
    @middle_east = middle_east
    @oceania = oceania
    @europe = europe
    @africa = africa
  end

  def create
    @plan = Plan.new(plans_params)
    if @plan.save
      redirect_to edit_plan_day_path, success: t('.success')
    else
      redirect_to new_plan_country_path, danger: t('.fail')
    end
  end

  def edit
    @north_america = north_america
    @south_america = south_america
    @asia = asia
    @middle_east = middle_east
    @oceania = oceania
    @europe = europe
    @africa = africa
  end

  def update
    @plan.update!(plans_params) 
    redirect_to plan_path, success: t('.success')
  end

  private

  def north_america
    north_america = %w(アメリカ エルサルバドル カナダ キューバ グアテマラ コスタリカ ジャマイカ ドミニカ共和国 パナマ ハイチ バハマ ベリーズ ホンジュラス メキシコ)
  end

  def south_america
    south_america = %w(アルゼンチン ウルグアイ エクアドル コロンビア ジャマイカ チリ ブラジル ペルー ベネズエラ ボリビア ガイアナ スリナム パラグアイ)
  end

  def asia
    asia = %w(インド インドネシア カンボジア シンガポール スリランカ タイ 韓国 中国 台湾 ネパール パキスタン バングラディッシュ 東ティモール フィリピン ブルネイ ベトナム マレーシア ミャンマー モルディブ モンゴル ラオス)
  end

  def middle_east
    middle_east = %w(アフガニスタン アラブ首長国連邦 イエメン イスラエル イラク イラン オマーン カタール クウェート サウジアラビア バーレーン トルコ ヨルダン レバノン)
  end

  def oceania
    oceania = %w(オーストラリア ニュージーランド フィジー パプアニューギニア ミクロネシア サモア トンガ バヌアツ パラオ キリバス グアム ニューカレドニア ツバル マーシャル諸島)
  end

  def europe
    europe = %w(オーストリア ベルギー ブルガリア クロアチア チェコ キプロス デンマーク エストニア フィンランド フランス ドイツ ギリシャ ハンガリー アイルランド イタリア ラトビア リトアニア ルクセンブルク マルタ オランダ ポーランド ポルトガル ルーマニア スロバキア スロベニア スペイン スウェーデン マケドニア スイス セルビア モンテネグロ ドイツ ノルウェー バチカン市国 アイスランド ジョージア)
  end
  
  def africa
    europe = %w(南アフリカ ナイジェリア ケニア ガーナ タンザニア エチオピア コンゴ モロッコ セネガル ウガンダ マダガスカル コートジボワール アルジェリア カメルーン スーダン ルワンダ ジンバブエ ザンビア チュニジア リベリア ギニア ボツワナ リビア 中央アフリカ トーゴ ジブチ ベナン コンゴ モーリシャス 南スーダン)
  end
end

