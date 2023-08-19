class Bookmarkk < ApplicationRecord
  belongs_to :moviee
  belongs_to :listt

  validates :comment, length: { minimum: 6 }
  validates :moviee_id, uniqueness: { scope: :listt_id, message: 'is already in the list' }
end
