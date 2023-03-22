class User < ApplicationRecord
    has_many :orders
    validates :name, presence: true,  length: { in: 6..28 }
    validates :email, presence: true, length: { in: 6..255 }
end
