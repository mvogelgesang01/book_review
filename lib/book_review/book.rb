class BookReview::Book
attr_accessor :title, :author, :url
attr_reader :reviews

@@all = []

def initialize(attr_hash)
    #@title = title
    #@author = author
    #@url = "https://bookmarks.reviews" + url

    attr_hash.each do |key, value|
        self.send("#{key}=",value)
    end
    @reviews = []
self.save
end

def save
    @@all << self
    self
end

def self.all
    @@all
end

def add_review(rev)
    @reviews << rev
    rev.book = self
end

end