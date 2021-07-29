class Library
  attr_reader :name,
              :books,
              :authors

  def initialize(name)
    @name = name
    @books = []
    @authors = []
  end

  def add_author(author)
    @authors << author
    @authors.each do |author|
      @books << author.books
    end
  end

  def publication_time_frame_for(book)
    book.each do |books|
      first_publication = books.publication_year.min_by
    end
    first_publication
  end

end
