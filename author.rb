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
                book.book.word_count
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
        Publish.all.select do |book|
            book.author == self
        end
    end

    def write_book(title, word_count)
        book = Book.new(title, word_count)
        Publish.new(book, self)
    end

    def total_words
        count = books.map do |book|
            book.book.word_count
        end.sum
        count
    end

    def collaborate(book_title)
        #allows an author to collaborate on a book by associating themselves as an author through publisher
        manuscript = Publish.all.find do |manuscript|
            manuscript.book.title == book_title
        end
        #check if the book exists -- if not, create a new one
        if manuscript == nil
            puts "That book project doesn't exist yet. Please create a new one. Please specify the project's word count:"
            word_count = gets.chomp
            self.write_book(book_title, word_count)
        elsif manuscript.author.name == self.name
            #if this author already has this book associated with them, do nothing
            "#{self.name} is already working on '#{book_title}'."
        else
            project = manuscript.book
            Publish.new(project, self)
            #if the book exists, but isn't associated with the author, create a new association
        end
    end

end
