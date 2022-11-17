class List < ApplicationRecord
  has_many :bookmarks
  has_many :movies, through: :bookmarks, dependent: :destroy
  # dependent faz com que se delete uma lista delete todos os filmes.
  validates :name, presence: true, uniqueness: true
end
