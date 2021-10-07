class BookReview::Scraper


    def self.scrape_books
        index_page = Nokogiri::HTML(open("https://bookmarks.reviews/biggest-new-books/"))
    
        

    array_of_books = index_page.css("div.latest_book")

    array_of_books.each do |book_card|
        attributes = {
        title: book_card.css("div.latest_book_title")[0].text.strip ,
        author: book_card.css("div.latest_book_author").text.strip ,
        url: book_card.css("a")[0].attributes['href'].value 
        }
        book = BookReview::Book.new(attributes)
    
    

    end

    def self.scrape_reviews(book_object)

    review_page = Nokogiri::HTML(open("https://bookmarks.reviews/#{book_object.url}"))
    
    reviews = review_page.css("div.bookmarks_pullquote") #array of review
   
    reviews.each do |review_html|
        #instantiate a new review
        #ro stands for review object
        @ro = BookReview::Review.new
        #associate that review with this movie
        @ro.book = book_object
        #set any review attributes
        @ro.quote = review_html.css("div.bookmarks_a_review_pullquote").text
        #add this review to movie.reviews
       #book_object.reviews << ro
       book_object.add_review(@ro)
    
end
end
end
end