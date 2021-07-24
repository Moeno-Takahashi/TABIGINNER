class LineUser < ApplicationRecord
  belongs_to :user
  attr_encrypted :uid, key: 'This is a key that is 256 bits!!'
  validates :encrypted_uid, presence: true
end
