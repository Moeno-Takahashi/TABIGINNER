class Plan < ApplicationRecord
  belongs_to :user

  enum days: [ :one_week, :two_week, :three_week , :four_week , :more_than_one_month ]

  validates :country, presence: true
end
