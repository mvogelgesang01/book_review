class StateReview::Scraper

    def self.scrape_states
    index_page = Nokogiri::HTML(open("https://realestate.usnews.com/places/rankings/best-places-to-live"))
    #binding.pry
    end


    def scrape_reviews(state)
    end
end