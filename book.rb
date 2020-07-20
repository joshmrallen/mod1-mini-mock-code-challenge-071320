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

    def add_author(author)
        #associates an author with a book through publisher by creating a new instance of publisher
        Publish.new(self, author)
    end

    def authors
        Publish.all.select do |project|
            project.book == self
        end.map do |project|
            project.author.name
        end

    end


end
