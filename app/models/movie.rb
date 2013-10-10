class Movie < ActiveRecord::Base
  has_many :showtimes
  has_many :roles
  has_many :stars, through: :roles

  validates :title, presence: true

  def self.average_rating
  end

  def rotten_finder
    RottenMovie.find(title: title, limit: 1)
  end
  
  def snippet
    (description != nil) ? (description.truncate 50) : ""
  end

  def audience_rating
    rotten_finder_return = rotten_finder.ratings.audience_score
  end
end
