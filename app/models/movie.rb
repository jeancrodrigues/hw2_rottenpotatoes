class Movie < ActiveRecord::Base
  def self.ratings
    Movie.select("rating").to_a
  end
end
