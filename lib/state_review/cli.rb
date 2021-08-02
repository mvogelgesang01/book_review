class StateReview::CLI

    def start
        puts "Welcome to the State Review App!"
        puts "Here are the best states to live in 2021:"
        #scrape all the states- call to scraper class
        #list top states to live in
        list_states
        #ask for input
        list_review #call another method

    end

    def list_states
        StateReview::Review.all.each.with_index(1) do |state, index|
            puts "#{index}. #{state.name}"
    end
end


    
end
