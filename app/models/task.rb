class Task < ApplicationRecord
  belong_to :user

  validates :title, presence: true
  validates :content, presence: true
end
