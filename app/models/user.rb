class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  validates :name, presence: true, length: {minimum:3, maximum:30}
  validates :email, presence: true, uniqueness: true, length: {minimum:10, maximum:40}
end
