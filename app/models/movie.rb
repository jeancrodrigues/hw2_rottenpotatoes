class Movie < ActiveRecord::Base
  def self.ratings
    @ratings = []
    Movie.select("distinct rating").each do |r|
      @ratings << r.rating
    end

    return @ratings
  end
end
