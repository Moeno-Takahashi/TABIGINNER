require 'rails_helper'

RSpec.describe 'Task', type: :system do
  describe 'タブ', js: true do
    let(:user) { create :user }
    before do
      load Rails.root.join("db/seeds.rb")
      login(user)
      visit user_tasks_path
    end
    context '「旅の予定」をクリックする' do
      it '「旅の予定」のタスクが表示される' do
        page.all('.task')[2].click
        expect(page).to have_content('旅程を簡単に組んでみる')
      end
    end
    context '「ビザ」をクリックする' do
      it '「ビザ」のタスクが表示される' do
        page.all('.task')[3].click
        expect(page).to have_content('ビザの要否確認')
        expect(page).to have_content('ビザの申請・取得')
      end
    end
    context '「航空券」をクリックする' do
      it '「航空券」のタスクが表示される' do
        page.all('.task')[4].click
        expect(page).to have_content('航空券の予約')
      end
    end
    context '「予防接種」をクリックする' do
      it '「予防接種」のタスクが表示される' do
        page.all('.task')[5].click
        expect(page).to have_content('予防接種の要否確認')
        expect(page).to have_content('予防接種の予約')
        expect(page).to have_content('予防接種をする')
      end
    end
    context '「お金」をクリックする' do
      it '「お金」のタスクが表示される' do
        page.all('.task')[6].click
        expect(page).to have_content('旅全体の費用を簡単に算出する')
      end
    end
    context '「ネット環境」をクリックする' do
      it '「ネット環境」のタスクが表示される' do
        page.all('.task')[7].click
        expect(page).to have_content('データローミングのオフ設定')
      end
    end
    context '「防犯対策」をクリックする' do
      it '「防犯対策」のタスクが表示される' do
        page.all('.task')[8].click
        expect(page).to have_content('防犯対策や渡航先の犯罪例の調査')
      end
    end
    context '「海外旅行保険」をクリックする' do
      it '「海外旅行保険」のタスクが表示される' do
        page.all('.task')[9].click
        expect(page).to have_content('海外旅行保険の加入手続きをする')
      end
    end
    context '「宿」をクリックする' do
      it '「宿」のタスクが表示される' do
        page.all('.task')[10].click
        expect(page).to have_content('初日の宿の予約をする')
      end
    end
    context '「持ち物」をクリックする' do
      it '「持ち物」のタスクが表示される' do
        page.all('.task')[11].click
        expect(page).to have_content('バックパック・サブバックの購入')
      end
    end
    context '「便利アプリ」をクリックする' do
      it '「便利アプリ」のタスクが表示される' do
        page.all('.task')[12].click
        expect(page).to have_content('便利アプリのインストール')
      end
    end
    
  end
end