require 'rails_helper'

RSpec.describe 'MakePlan', type: :system do
  let(:user) { create :user }
  let(:decided_countries) { create :user, :user_not_have_days }
  let(:decided_days) { create :user, :user_not_have_departure_date }
  let(:decided_plan) { create :user, :user_has_plan }
  let(:user_is_line_friend) { create :user, :user_has_plan, :user_is_line_user }

  describe '旅の予定' do
    context '予定を決めていない場合' do
      it '「予定を立てる」ボタンが表示される' do
        login(user)
        visit plan_path
        expect(page).to have_content('予定を立てる')
      end
    end

    context '目的地だけ決まっている場合' do
      before do
        login(decided_countries)
        visit plan_path
      end
      it '国名が表示され、日数・出発予定日は「未選択」と表示されること' do
        expect(page).to have_css('p.country_name')
        expect(page).to have_content('編集', count: 2)
        expect(page).to have_content('未選択', count: 2)
      end
      it  '目的地の編集ボタンをクリックすると目的地編集ページに遷移すること' do
        page.all('a')[0].click
        expect(current_path).to eq edit_plan_country_path
      end
    end

    context '目的地と日数が決まっている場合' do
      before do
        login(decided_days)
        visit plan_path
      end
      it '国名と日数が表示され、出発予定日は「未選択」と表示されること' do
        expect(page).to have_css('p.country_name')
        expect(page).to have_css('p.days')
        expect(page).to have_content('編集', count: 3)
        expect(page).to have_content('未選択', count: 1)
      end
      it '日数の編集ボタンをクリックすると日数編集のページに遷移すること' do
        page.all('a')[1].click
        expect(current_path).to eq edit_plan_day_path
      end
    end

    context '予定が全て決まっている場合' do
      before do
        login(decided_plan)
        visit plan_path
      end
      it '国名・日数・出発予定日が表示されること' do
        expect(page).to have_css('p.country_name')
        expect(page).to have_css('p.days')
        expect(page).to have_css('p.departure_date')
      end
      it '出発予定日の編集ボタンをクリックすると出発予定日編集のページに遷移すること' do
        page.all('a')[2].click
        expect(current_path).to eq edit_plan_schedule_path
      end
    end
  end


  describe '行き先を決定・編集', js: true  do
    context '大陸名をクリックし、国名を選択して決定をクリックする' do
      it '（決定)日数決定ページに遷移し、「目的地を決定しました」というフラッシュメッセージが出る' do
        login(user)
        visit new_plan_country_path
        find('.north').click
        check 'plan_country_アメリカ'
        click_on '決定'
        expect(page).to have_content('目的地を決定しました')
        expect(current_path).to eq edit_plan_day_path
      end
      it '（編集）旅の予定ページに遷移し、「目的地を更新しました」というフラッシュメッセージが出る' do
        login(decided_plan)
        visit edit_plan_country_path
        find('.asia').click
        check 'plan_country_インド'
        click_on '決定'
        expect(page).to have_content('目的地を更新しました')
        expect(current_path).to eq plan_path
      end
    end

    context '国名を選択せずに、決定をクリックする' do
      it '（決定)ページ遷移せずに、「目的地の決定に失敗しました」というフラッシュメッセージが出る' do
        login(user)
        visit new_plan_country_path
        click_on '決定'
        expect(page).to have_content('目的地の決定に失敗しました')
        expect(current_path).to eq new_plan_country_path
      end
      it '（編集）「目的地を決定しました」というフラッシュメッセージが出て、旅の予定ページに遷移する' do
        login(decided_plan)
        visit edit_plan_country_path
        click_on '決定'
        expect(page).to have_content('目的地を更新しました')
        expect(current_path).to eq plan_path
      end
    end

    context '「未定の人はコチラ」をクリックする' do
      it '「東南アジアがおすすめ!!」という表示のあるページに遷移し、「戻る」をクリックすると行き先決定のページに戻る' do
        login(user)
        visit new_plan_country_path
        click_on '未定の人はコチラ'
        expect(page).to have_content('東南アジアがおすすめ!!')
        expect(current_path).to eq advice_home_path
        click_on '戻る'
        expect(current_path).to eq new_plan_country_path
      end
      it '「東南アジアがおすすめ!!」という表示のあるページに遷移し、すでに行き先が決定されている場合、「戻る」をクリックすると行き先変更ページに戻る' do
        login(decided_plan)
        visit edit_plan_country_path
        click_on '未定の人はコチラ'
        expect(page).to have_content('東南アジアがおすすめ!!')
        expect(current_path).to eq advice_home_path
        click_on '戻る'
        expect(current_path).to eq edit_plan_country_path
      end
    end
  end


  describe '日数を決める' do
    context '日数を選択し、決定をクリックする' do
      it '「出発予定日を決めましょう！」という表示のあるページに遷移し、「日数を決定しました」というフラッシュメッセージが出る' do
        login(decided_countries)
        visit edit_plan_day_path
        find('.two').click
        click_on '決定'
        expect(page).to have_content('日数を決定しました')
        expect(current_path).to eq step3_home_path
      end
    end

    context  '日数を選択せずに、決定をクリックする' do
      it '（決定)「１週間」が自動で選択され、「出発予定日を決めましょう！」という表示のあるページに遷移し、「日数を決定しました」というフラッシュメッセージが出る' do
        login(decided_countries)
        visit edit_plan_day_path
        click_on '決定'
        expect(page).to have_content('日数を決定しました')
        expect(current_path).to eq step3_home_path
      end
      it '（編集: 出発予定日が決定していた場合）選択していた日数が自動で選択され、旅の予定ページに遷移し、「日数を決定しました」というフラッシュメッセージが出る' do
        login(decided_plan)
        visit edit_plan_day_path
        click_on '決定'
        expect(page).to have_content('日数を決定しました')
        expect(current_path).to eq plan_path
      end
    end
  end


  describe '出発予定日を決める' do
    context '日付を選択し、決定をクリックする' do
      it '「出発予定日を決定しました」というフラッシュメッセージと出発予定日までの残りの日数が表示される' do
        login(user_is_line_friend)
        visit edit_plan_schedule_path
        fill_in 'plan[departure_date]', with: Date.today + 20
        click_on '決定'
        expect(page).to have_content('出発予定日を決定しました')
        expect(page).to have_content('20日！！')
        expect(current_path).to eq step5_home_path        
      end
    end
    
    context '日付を選択せずに決定をクリックする' do
      it '一ヶ月後の日付が自動で入力され、「出発予定日を決定しました」というフラッシュメッセージと出発予定日までの残りの日数が表示される' do
        login(user_is_line_friend)
        visit edit_plan_schedule_path
        click_on '決定'
        expect(page).to have_content('出発予定日を決定しました')
        expect(page).to have_content((Date.today.next_month - Date.today).to_i)
        expect(current_path).to eq step5_home_path
      end
    end

    context '未定をクリックする' do
      it '「出発予定日を決めましょう！」という表示のあるページに遷移する' do
        login(decided_days)
        visit edit_plan_schedule_path
        click_on '未定'
        expect(page).to have_content('出発予定日を')
        expect(current_path).to eq step3_home_path 
      end
    end

    context '出発予定日を編集する' do
      it '未定ボタンが表示されない' do
        login(decided_plan)
        visit edit_plan_schedule_path
        expect(page).not_to have_selector 'a.btn', text: '未定'
      end
    end
  end
end