class BookReview::Scraper

    def self.scrape_books
        index_page = Nokogiri::HTML(open("https://bookmarks.reviews/biggest-new-books/"))
        

    array_of_books = index_page.css("div.latest_book")

    array_of_books.each do |book_card|
        attributes = {
        title: book_card.css("div.latest_book_title")[0].text ,
        author: book_card.css("div.latest_book_author").text ,
        url: book_card.css("a")[0].attributes['href'].value ,
        }
        book= BookReview::Book.new(attributes)
        

    
    end
    end
end