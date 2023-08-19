class Moviee < ApplicationRecord
  has_many :bookkmarks

  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
end
