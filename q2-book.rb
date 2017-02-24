class Book
  attr_accessor :title
  attr_accessor :price

  def initialize(title, price)
    @title = title
    @price = price
  end


  def rename_title(title)
    @title = title
  end

  def price_increase
    @price *= 2
  end
end

class Comic<Book
  def price_increase
    @price *= 1.5
  end
end

class Magazine<Book
  def price_increase
    @price *= 3
  end
end

puts "-------------check class Book-------------"
print("enter book title: ")
book_title = gets.chop
print("enter book price: ")
book_price = gets.to_i
book = Book.new(book_title, book_price)
puts "generate new Book instance, title: #{book.title}, price: #{book.price}"
print("rename book_title: ")
new_book_title = gets.chop
book.rename_title(new_book_title)
puts "rename Book instance title, title: #{book_title} => #{book.title}"
old_book_price = book.price
book.price_increase
puts "increase book_price, price: #{old_book_price} => #{book.price}" 

puts "-------------check class Comic-------------"
print("enter comic title: ")
comic_title = gets.chop
print("enter comic price: ")
comic_price = gets.to_i
comic = Comic.new(comic_title, comic_price)
puts "generate new Comic instance, title: #{comic.title}, price: #{comic.price}"
print("rename comic_title: ")
new_comic_title = gets.chop
comic.rename_title(new_comic_title)
puts "rename Comic instance title, title: #{comic_title} => #{comic.title}"
old_comic_price = comic.price
comic.price_increase
puts "increase comic_price, price: #{old_comic_price} => #{comic.price}" 

puts "-------------check class Magazine-------------"
print("enter magazine title: ")
magazine_title = gets.chop
print("enter magazine price: ")
magazine_price = gets.to_i
magazine = Magazine.new(magazine_title, magazine_price)
puts "generate new Magazine instance, title: #{magazine.title}, price: #{magazine.price}"
print("rename magazine_title: ")
new_magazine_title = gets.chop
magazine.rename_title(new_magazine_title)
puts "rename Magazine instance title, title: #{magazine_title} => #{magazine.title}"
old_magazine_price = magazine.price
magazine.price_increase
puts "increase magazine_price, price: #{old_magazine_price} => #{magazine.price}" 

