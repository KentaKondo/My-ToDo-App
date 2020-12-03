class Task < ApplicationRecord
  has_one_attached :eyecatch
  has_many :comments
  belongs_to :board, optional: true
  belongs_to :user,  optional: true

  def comment_count
    comments.count
  end
end
