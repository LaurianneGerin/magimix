class Music < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :artist, presence: true
  validates :album, presence: true, uniqueness: true
end
