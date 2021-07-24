class User < ApplicationRecord
  authenticates_with_sorcery!

  mount_uploader :user_image, UserImageUploader

  validates :password, presence: true, length: { minimum: 4 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }
  validates :email, presence: true, uniqueness: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :reset_password_token, uniqueness: true, allow_nil: true
  validates :last_name, presence: true, format: { with: /\A[a-zA-Z]+\z/ }
  validates :first_name, presence: true, format: { with: /\A[a-zA-Z]+\z/ }
  validates :birthday, presence: true
  validates :sex, presence: true

  enum sex: { male: 0, female: 1 }  
end
