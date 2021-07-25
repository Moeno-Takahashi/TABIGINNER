class Item < ApplicationRecord
  has_many :user_items, dependent: :destroy
  belongs_to :user

  validates :title, presence: true

  enum category_id: { must_item: 1, electronics_item: 2, daily_necessities_item: 3, clothing_cold_item: 4, medicine_item: 5, clothing_hot_item: 6, others_item: 7, my_item: 8 }
end

