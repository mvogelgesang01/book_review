class BookReview::Book
attr_accessor :title, :author, :url

@@all = []

def initialize(attr_hash)
    #@title = att_hash[:title]
    #@author = att_hash[:author]

    attr_hash.each do |key, value|
        self.send("#{key}=",value)
    end
self.save
end

def save
    @@all << self
    self
end

def self.all
    @@all
end



end