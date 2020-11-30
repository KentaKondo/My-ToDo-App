class Task < ApplicationRecord
  has_one_attached :eyecatch
  belongs_to :board, optional: true
  belongs_to :user,  optional: true
end
