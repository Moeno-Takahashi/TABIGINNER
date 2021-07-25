class Task < ApplicationRecord
  has_many :user_tasks, dependent: :destroy
  belongs_to :user

  validates :title, presence: true
  enum category_id: { passport_task: 1, schedule_task: 2, visa_task: 3, airticket_task: 4, vaccination_task: 5, money_task: 6, internet_task: 7, crime_task: 8, insurance_task: 9, hostel_task: 10, belongings_task: 11, app_task: 12, my_task: 13 }
end
