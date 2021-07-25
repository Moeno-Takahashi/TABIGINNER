require 'rails_helper'

RSpec.describe 'Home', type: :system do
  describe 'カウントダウン' do
    let(:decided_days) { create :user, :user_not_have_departure_date, :user_is_line_user }
    before  do
      login(decided_days)
      visit edit_plan_schedule_path
    end
    context '残り日数が14日' do
      it  '「パスポートの用意はできてる？」と表示されること' do
        fill_in 'plan[departure_date]', with: Date.today + 14
        click_on '決定'
        expect(page).to have_content('パスポートの用意はできてる？')
        expect(current_path).to eq step5_home_path    
      end
    end
    context '残り日数が11日' do
      it  '「旅の予定は簡単に立ててある？」と表示されること' do
        fill_in 'plan[departure_date]', with: Date.today + 11
        click_on '決定'
        expect(page).to have_content('旅の予定は簡単に立ててある？')
        expect(current_path).to eq step5_home_path  
      end
    end
    context '残り日数が10日' do
      it  '「航空券の用意はできてる？」と表示されること' do
        fill_in 'plan[departure_date]', with: Date.today + 10
        click_on '決定'
        expect(page).to have_content('航空券の用意はできてる？')
        expect(current_path).to eq step5_home_path
      end
    end
    context '残り日数が9日' do
      it  '「国際キャッシュ・クレジットカード」と表示されること' do
        fill_in 'plan[departure_date]', with: Date.today + 9
        click_on '決定'
        expect(page).to have_content('国際キャッシュ・クレジットカード')
        expect(current_path).to eq step5_home_path
      end
    end
    context '残り日数が8日' do
      it  '「海外旅行保険に入ってる？」と表示されること' do
        fill_in 'plan[departure_date]', with: Date.today + 8
        click_on '決定'
        expect(page).to have_content('海外旅行保険に入ってる？')
        expect(current_path).to eq step5_home_path
      end
    end
    context '残り日数が7日' do
      it  '「ネット環境の準備はできてる？」と表示されること' do
        fill_in 'plan[departure_date]', with: Date.today + 7
        click_on '決定'
        expect(page).to have_content('ネット環境の準備はできてる？')
        expect(current_path).to eq step5_home_path
      end
    end
    context '残り日数が6日' do
      it  '「外貨の両替場所や方法は決まってる？」と表示されること' do
        fill_in 'plan[departure_date]', with: Date.today + 6
        click_on '決定'
        expect(page).to have_content('外貨の両替場所や方法は')
        expect(current_path).to eq step5_home_path
      end
    end
    context '残り日数が5日' do
      it  '「初日の宿の予約はした？」と表示されること' do
        fill_in 'plan[departure_date]', with: Date.today + 5
        click_on '決定'
        expect(page).to have_content('初日の宿の予約はした？')
        expect(current_path).to eq step5_home_path
      end
    end
    context '残り日数が4日' do
      it  '「防犯対策はしっかりできてる？」と表示されること' do
        fill_in 'plan[departure_date]', with: Date.today + 4
        click_on '決定'
        expect(page).to have_content('防犯対策、しっかりできてる？')
        expect(current_path).to eq step5_home_path
      end
    end
    context '残り日数が3日' do
      it  '「パッキングは終わってる？」と表示されること' do
        fill_in 'plan[departure_date]', with: Date.today + 3
        click_on '決定'
        expect(page).to have_content('パッキングは終わってる？')
        expect(current_path).to eq step5_home_path
      end
    end
    context '残り日数が2日' do
      it  '「便利アプリのインストールはしてある？」と表示されること' do
        fill_in 'plan[departure_date]', with: Date.today + 2
        click_on '決定'
        expect(page).to have_content('便利アプリのインストール')
        expect(current_path).to eq step5_home_path
      end
    end
    context '残り日数が1日' do
      it  '「心の準備はできてる？」と表示されること' do
        fill_in 'plan[departure_date]', with: Date.today + 1
        click_on '決定'
        expect(page).to have_content('心の準備はできてる？')
        expect(current_path).to eq step5_home_path
      end
    end
    context '残り日数が0日' do
      it  '「今日から君はバックパッカー！」と画面右下にプラスボタンが表示されること' do
        fill_in 'plan[departure_date]', with: Date.today
        click_on '決定'
        expect(page).to have_content('今日から君はバックパッカー！')
        expect(current_path).to eq step5_home_path
      end
    end
    context 'その他残り日数' do
      it  '「旅の準備を進めよう！」と表示されること' do
        fill_in 'plan[departure_date]', with: Date.today + rand(15..100)
        click_on '決定'
        expect(page).to have_content('旅の準備を進めよう！')
        expect(current_path).to eq step5_home_path
      end
    end
  end
end