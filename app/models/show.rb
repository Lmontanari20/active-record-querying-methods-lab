class Show < ActiveRecord::Base
    def self.highest_rating
        # return highest value in rating column
        Show.maximum(:rating)
    end

    def self.most_popular_show
        # return show with highest rating
        show = Show.find_by(rating: Show.highest_rating)
        show
    end

    def self.lowest_rating
        # returns the lowest value in the ratings column
        Show.minimum(:rating)
    end

    def self.least_popular_show
        # returns the show with the lowest rating
        show = Show.find_by(rating: Show.lowest_rating)
        show
    end

    def self.ratings_sum
        # returns the sum of all ratings
        Show.sum(:rating)
    end

    def self.popular_shows
        # returns an aray of all shows that have rating greater than 5
        Show.where("rating > 5")
    end

    def self.shows_by_alphabetical_order
        # returns array of all shows ordered by name alphabetically
        Show.all.order(:name)
    end
end