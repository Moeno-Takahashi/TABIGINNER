class UserTask < ApplicationRecord
  belongs_to :user
  belongs_to :task
  validates :user_id, uniqueness: { scope: :task_id }
end
