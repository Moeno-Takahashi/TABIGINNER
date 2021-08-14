class User < ApplicationRecord
  authenticates_with_sorcery!

  mount_uploader :user_image, UserImageUploader

  has_one :plan, dependent: :destroy
  has_one :line_user, dependent: :destroy
  has_many :tasks, dependent: :destroy
  has_many :items, dependent: :destroy
  has_many :user_tasks, dependent: :destroy
  has_many :user_task_tasks, through: :user_tasks, source: :task, dependent: :destroy
  has_many :user_items, dependent: :destroy
  has_many :user_item_items, through: :user_items, source: :item, dependent: :destroy

  validates :password, presence: true, length: { minimum: 4 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }
  validates :email, presence: true, uniqueness: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :reset_password_token, uniqueness: true, allow_nil: true
  validates :last_name, presence: true, format: { with: /\A[a-zA-Z]+\z/ }
  validates :first_name, presence: true, format: { with: /\A[a-zA-Z]+\z/ }
  validates :birthday, presence: true
  validates :sex, presence: true
  validates :status, presence: true

  enum sex: { male: 0, female: 1 }  
  enum status: { not_plan: 0, country_decided: 1, days_decided: 2, departure_date_decided: 3, add_line_friend: 4 }

  def checked(task)
    user_task_tasks << task
  end

  def unchecked(task)
    user_task_tasks.destroy(task)
  end

  def checked?(task)
    task.user_tasks.pluck(:user_id).include?(id) 
  end

  def item_checked(item)
    user_item_items << item  
  end

  def item_unchecked(item)
    user_item_items.destroy(item)
  end

  def item_checked?(item)
    item.user_items.pluck(:user_id).include?(id)
  end
end
