require 'rails_helper'

RSpec.describe 'Profile', type: :system do
  describe 'ユーザー作成' do
    context 'フォームの入力値が正常' do
      it 'フラッシュメッセージで「ユーザー登録が完了しました」と表示され、画面遷移する' do
        visit new_user_path
        fill_in 'user[last_name]', with: 'test'
        fill_in 'user[first_name]', with: 'test'
        select '1997', from: 'user[birthday(1i)]'
        select '5月', from: 'user[birthday(2i)]'
        select '31', from: 'user[birthday(3i)]'
        attach_file 'user[user_image]', 'spec/factories/user_image.jpg' 
        choose  'user_sex_female'
        fill_in 'user[email]', with: 'test@example.com'
        fill_in 'user[password]', with: '12345678'
        fill_in 'user[password_confirmation]',  with: '12345678'
        click_on '登録する'
        expect(page).to have_content('ユーザー登録が完了しました')
        expect(current_path).to eq step1_home_path
      end
    end
    context 'フォームの入力値が正常でない' do
      it '画面遷移せず、エラー内容の表示と「ユーザー登録に失敗しました」とフラッシュメッセージが表示される' do
        visit new_user_path
        click_on '登録する'
        expect(page).to have_content('ユーザー登録に失敗しました')
        expect(page).to have_content('パスワードを入力してください')
        expect(page).to have_content('パスワードは4文字以上で入力してください')
        expect(page).to have_content('パスワード確認を入力してください')
        expect(page).to have_content('メールアドレスを入力してください')
        expect(page).to have_content('姓を入力してください')
        expect(page).to have_content('姓は不正な値です')
        expect(page).to have_content('名を入力してください')
        expect(page).to have_content('名は不正な値です')
        expect(page).to have_content('性別を入力してください')
        expect(current_path).to eq user_path
      end
    end
  end
  describe 'ユーザー詳細' do
    let(:user) { create :user }
    let(:user_with_image) { create :user, :user_with_image }
    context 'プロフィール画像が登録されていない場合' do
      it 'デフォルトの画像が表示されていること' do
        login(user)
        visit user_path
        expect(page).to have_selector "img[src$='default-d407227417953ed8355339ec5e56cd5a0ebb2dda5639df4ac3c73f2435e88fa2.png']"
      end
    end
    context 'プロフィール画像が登録されている場合' do
      it 'アップロードされたユーザーの画像が表示されていること' do
        login(user_with_image)
        visit user_path
        expect(page).to have_selector('.user-image')
      end
    end
    it '姓・名・生年月日・性別が表示されていること' do
      login(user)
      visit user_path
      expect(page).to have_css('.last_name')
      expect(page).to have_css('.first_name')
      expect(page).to have_css('.birthday')
      expect(page).to have_css('.sex')
    end
    it '編集をクリックするとユーザー編集画面に遷移すること' do
      login(user)
      visit user_path
      click_on '編集'
      expect(current_path).to eq edit_user_path
    end
    it 'ログアウトをクリックするとログアウト処理がされて、ログイン画面に遷移すること' do
      login(user)
      visit user_path
      click_on 'ログアウト'
      expect(page).to have_current_path(root_path)
    end
  end
  describe 'ユーザー編集' do
    let(:user) { create :user }
    before do
      login(user)
    end
    context 'フォームの入力値が正常' do
      it '「ユーザー情報を更新しました」というフラッシュメッセージが表示され、ユーザーの編集が成功する' do
        visit edit_user_path
        fill_in 'user[last_name]', with: 'edit'
        fill_in 'user[first_name]', with: 'edit'
        select '1997', from: 'user[birthday(1i)]'
        select '5月', from: 'user[birthday(2i)]'
        select '31', from: 'user[birthday(3i)]'
        attach_file 'user[user_image]', 'spec/factories/user_image.jpg' 
        choose  'user_sex_female'
        click_on  '更新する'
        expect(page).to have_content('ユーザー情報を更新しました')
        expect(current_path).to eq user_path
      end
    end

    context 'フォームの入力値が正常でない' do
      it '姓が入力されていない場合' do
        visit edit_user_path
        fill_in 'user[last_name]', with: nil
        fill_in 'user[first_name]', with: 'edit'
        select '1997', from: 'user[birthday(1i)]'
        select '5月', from: 'user[birthday(2i)]'
        select '31', from: 'user[birthday(3i)]'
        attach_file 'user[user_image]', 'spec/factories/user_image.jpg' 
        choose  'user_sex_female'
        click_on  '更新する'
        expect(page).to have_content('ユーザー情報を更新できませんでした')
      end
      it '名が入力されていない場合' do
        visit edit_user_path
        fill_in 'user[last_name]', with: 'edit'
        fill_in 'user[first_name]', with: nil
        click_on  '更新する'
        expect(page).to have_content('ユーザー情報を更新できませんでした')
      end
      it '姓の値が不正な場合' do
        visit edit_user_path
        fill_in 'user[last_name]', with: '田中'
        fill_in 'user[first_name]', with: 'edit'
        click_on  '更新する'
        expect(page).to have_content('ユーザー情報を更新できませんでした')
      end
      it '名の値が不正な場合' do
        visit edit_user_path
        fill_in 'user[last_name]', with: 'edit'
        fill_in 'user[first_name]', with: '太郎'
        click_on  '更新する'
        expect(page).to have_content('ユーザー情報を更新できませんでした')
      end
    end
  end
end
