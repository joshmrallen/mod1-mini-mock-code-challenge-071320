class Publish
    attr_accessor :book, :author

    @@all = []

    def initialize(book, author)
        @book = book
        @author = author
        Publish.all << self
    end

    def self.all
        @@all
    end



end