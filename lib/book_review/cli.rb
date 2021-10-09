class BookReview::CLI
    attr_accessor :sorted_books

    def start
        puts "Welcome to the Book Review App!"
        puts "Here is a list of The Hottest Books of The Season"
        url = "https://bookmarks.reviews/biggest-new-books/"
        books = BookReview::Scraper.scrape_books
        list_books
        puts "Please select a book you want more info about by choosing a number"
        get_book_method #asked for input and reported a 'teaser'
    end

    def index
    end

    
    end

    def sort_books
        @sorted_books = BookReview::Book.all.sort_by{|book| book.title}
    end

    def list_books
        sort_books.each.with_index(1) do |book, index|
            puts "#{index}. #{book.title}"
    end
end

def get_book_method
    input = gets.strip
    index = input.to_i-1
    if index.between?(0,8)
        book = @sorted_books[index]
        puts "#{book.title}"
        puts "#{book.author}"
        puts "#{book.url}"
         want_more_info(book)
    #elsif input == "exit"
        #allow this method to exit
    #else
        #puts "Sorry! I didnt understand that command"
        #get_book_method #recursion
        puts "Please select a book you want more info about by choosing a number or type 'exit' to Exit"
        get_book_method
    end
end
    
def want_more_info(book)
    puts "Read more? (Y/N)"
    input = gets.strip.upcase
    until input == "Y" || input == "N"
        puts "type Y(yes) or N(no)"
        input = gets.strip.upcase
 
end
if input == "Y" || input == "YES"
    puts "...fetching the reviews \n\n "
    BookReview::Scraper.scrape_reviews(book)
    book.reviews.each do |review, index|
        puts "#{review.quote} \n\n"
    end
elsif input == "list"
list_books
elsif input= "exit"
    puts "goodbye"
   end
end

