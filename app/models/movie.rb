class Movie < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  belongs_to :category
  has_many :ratings, dependent: :destroy

  def rating
    ratings.select('AVG(vote)')[0][:avg].to_i
  end
end
