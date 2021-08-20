class BookReview::CLI

    def start
        puts "Welcome to the Book Review App!"
        puts "Here is a list of The Hottest Books of The Season"
        #scrape all the states- call to scraper class
        url = "https://bookmarks.reviews/biggest-new-books/"
        books = BookReview::Scraper.scrape_books
        #puts states[1]
        
        list_book
        #ask for input
    #input = gets.strip.downcase]
    #case input
    #when "state"
        #list_review #call another method

    end

    

    def list_book
        BookReview::Book.all.each.with_index(1) do |book, index|
            puts "#{index}. #{book.title}"
    end
end


    
end
