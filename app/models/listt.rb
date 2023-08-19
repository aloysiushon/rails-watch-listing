class Listt < ApplicationRecord
  has_many :bookmarkks, dependent: :destroy
  has_many :moviees, through: :bookmarkks, dependent: :destroy

  validates :name, uniqueness: true, presence: true
end
