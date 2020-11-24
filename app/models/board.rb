class Board < ApplicationRecord
  belongs_to :user, dependent: :destroy
end

