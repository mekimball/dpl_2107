require './lib/book'

class Author
  attr_reader :books


  def initialize(info)
    @first_name = info[:first_name]
    @last_name = info[:last_name]
    @books = []
  end

  def name
    @first_name + " " + @last_name
  end

  def write(title, publication_date)
    data = {author_first_name: @first_name,
                     author_last_name: @last_name,
                     title: title,
                     publication_date: publication_date}
    book_name = title.gsub(/ /, '_').downcase
    book_name = Book.new(data)
  end
end
