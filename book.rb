class Book
    attr_reader :title, :author, :word_count

    @@all = []

    def initialize(title, author, word_count)
        @title = title
        @author = author
        @word_count = word_count
        Book.all << self
    end

    def self.all
        @@all
    end


end
