class User < ApplicationRecord
  validates :nickname, presence: true, on: :create
  validates :note, presence: true
end
