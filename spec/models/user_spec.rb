require 'rails_helper'

RSpec.describe 'User', type: :model do
  it '姓、名、メールアドレス、生年月日、性別、パスワード、パスワード確認が全て揃った場合、有効である' do
    user = build(:user)
    expect(user).to be_valid
  end

  it '姓がない場合、無効である' do
    user = build(:user, last_name: nil)
    user.valid?
    expect(user.errors[:last_name]).to include("を入力してください", "は不正な値です")
  end

  it '姓がローマ字入力でない場合、無効である' do
    user = build(:user, last_name: '田中')
    user.valid?
    expect(user.errors[:last_name]).to include("は不正な値です")
  end

  it '名がない場合、無効である'do
    user = build(:user, first_name: nil)
    user.valid?
    expect(user.errors[:first_name]).to include("を入力してください", "は不正な値です")
  end
  it '名がローマ字入力でない場合、無効である' do
    user = build(:user, first_name: '太郎')
    user.valid?
    expect(user.errors[:first_name]).to include("は不正な値です")
  end
  it 'メールアドレスがない場合、無効である' do
    user = build(:user, email: nil)
    user.valid?
    expect(user.errors[:email]).to include("を入力してください")
  end
  it '重複したメールアドレスの場合、無効である' do
    user1 = create(:user)
    user2 = build(:user)
    user2.valid?
    expect(user2.errors[:email]).to include("はすでに存在します")
  end
  it '生年月日がない場合、無効である' do
    user = build(:user, birthday: nil)
    user.valid?
    expect(user.errors[:birthday]).to include("を入力してください")
  end
  it '性別がない場合、無効である' do
    user = build(:user, sex: nil)
    user.valid?
    expect(user.errors[:sex]).to include("を入力してください")
  end
  it 'パスワードがない場合、無効である' do
    user = build(:user, password: nil)
    user.valid?
    expect(user.errors[:password]).to include("を入力してください", "は4文字以上で入力してください")
  end
  it 'パスワード確認がない場合、無効である' do
    user = build(:user, password_confirmation: nil)
    user.valid?
    expect(user.errors[:password_confirmation]).to include("を入力してください")
  end
  it 'パスワードの長さが４文字より短い場合は無効である' do
    user = build(:user, password: 'pas')
    user.valid?
    expect(user.errors[:password]).to include("は4文字以上で入力してください")
  end
  it 'パスワードとパスワード確認が一致しない場合、無効である' do
    user = build(:user, password_confirmation: 'passsword')
    user.valid?
    expect(user.errors[:password_confirmation]).to include("とパスワードの入力が一致しません")
  end
end