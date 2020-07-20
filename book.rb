class Book
    attr_reader :title, :word_count

    @@all = []

    def initialize(title, word_count)
        @title = title
        @word_count = word_count
        Book.all << self
    end

    def self.all
        @@all
    end

    def self.find(title)
        Book.all.find do |book|
            book.title == title
        end
    end

    def add_author(author)
        #associates an author with a book through publisher by creating a new instance of publisher
        #add functionality to check if author is already apart of the book
        Publish.new(self, author)
    end

    def published
        Publish.all.select do |project|
            project.book == self
        end
    end

    def authors
        published.map do |project|
            project.author
        end
    end

end
