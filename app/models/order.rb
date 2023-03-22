class Order < ApplicationRecord
  belongs_to :user
  validates :theme, presence: true,  length: { in: 6..28 }
  validates :text, presence: true, length: { in: 6..255 }
end
