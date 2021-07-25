require 'rails_helper'

RSpec.describe 'Login', type: :system do
  let(:user) { create :user }
  let(:decided_countries) { create :user, :user_not_have_days }
  let(:decided_days) { create :user, :user_not_have_departure_date }
  let(:decided_plan) { create :user, :user_has_plan }
  let(:user_is_line_friend) { create :user, :user_has_plan, :user_is_line_user }
  describe 'ログイン成功' do
    context 'ユーザーがまだ目的地を決めていない時' do
      it '「旅の目的地を」と表示され、フラッシュメッセージに「ログインしました」と表示されること' do
        login(user)
        expect(page).to have_content 'ログインしました'
        expect(page).to have_content '旅の目的地を'
        expect(current_path).to eq step1_home_path
      end
    end

    context 'ユーザーがすでに目的地を決めていて、日数を決めていない時' do
      it '「旅の日数を」と表示され、フラッシュメッセージに「ログインしました」と表示されること' do
        login(decided_countries)
        expect(page).to have_content 'ログインしました'
        expect(page).to have_content '旅の日数を'
        expect(current_path).to eq step2_home_path
      end
    end

    context 'ユーザーがすでに日数を決めていて、出発予定日を決めていない時' do
      it '「出発予定日を」と表示され、フラッシュメッセージに「ログインしました」と表示されること' do
        login(decided_days)
        expect(page).to have_content 'ログインしました'
        expect(page).to have_content '出発予定日を'
        expect(current_path).to eq step3_home_path
      end
    end

    context 'ユーザーがすでに出発予定日を決めていて、Lineの友だち追加をしていない時' do
      it '「LINEの友だち追加」と表示され、フラッシュメッセージに「ログインしました」と表示されること' do
        login(decided_plan)
        expect(page).to have_content 'ログインしました'
        expect(page).to have_content 'LINEの友だち追加'
        expect(current_path).to eq step4_home_path
      end
    end

    context 'ユーザーがすでにLineの友だち追加をしている時' do
      it '「旅人になるまであと...」と表示され、フラッシュメッセージに「ログインしました」と表示されること' do
        login(user_is_line_friend)
        expect(page).to have_content 'ログインしました'
        expect(page).to have_content '旅人になるまであと...'
        expect(current_path).to eq step5_home_path
      end
    end
  end

  describe 'ログイン失敗' do
    context 'メールアドレスまたはパスワード、もしくはその両方が違う場合' do
      xit 'フラッシュメッセージに「ログインできませんでした」と表示され、ログインページが再度表示されること' do
        fill_in 'email', with: 'error@example.com'
        fill_in 'password', with: 'errorpassword'
        click_button 'ログイン'
        expect(page).to have_content 'ログインできませんでした'
        visit current_path #エラー
      end
    end
  end
end
