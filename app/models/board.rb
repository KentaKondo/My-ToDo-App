class Board < ApplicationRecord
  belongs_to :user
  has_many :tasks
  validates :title, presence: true
  validates :content, presence: true
end

