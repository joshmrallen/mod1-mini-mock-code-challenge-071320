class Author
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        Author.all << self
    end

    def self.all
        @@all
    end

    def self.longest_book
        verbose = Author.all.map do |author|
            author.books.map do |book|
                book.word_count
            end.max
        end
        #use .index to find the index of the max from the verbose array
        index = verbose.index(verbose.max)
        #returns the author instance with the biggest book
        Author.all[index]
    end

    def self.most_words
        verbose = Author.all.map do |author|
            author.total_words
        end
        index = verbose.index(verbose.max)
        #returns the author instance who has written the most words in total
        Author.all[index]
    end

    def books
        Book.all.select do |book|
            book.author == self
        end
    end

    def write_book(title, word_count)
        Book.new(title, self, word_count)
    end

    def total_words
        count = 0
        books.map do |book|
            count += book.word_count
        end
        count
    end

end
