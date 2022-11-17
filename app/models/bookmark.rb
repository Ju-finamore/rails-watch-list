class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :movie_id, presence: true
  validates :comment, length: { minimum: 6 }
  validates :movie, uniqueness: { scope: :list, message: 'A list contains only one movie at time'}
end
