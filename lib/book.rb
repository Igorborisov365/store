# encoding: utf-8
#
# Класс Книга
class Book < Product

  attr_accessor :title, :genre, :author

  def initialize(params)
    @price = params[:price]
    @amount = params[:amount]
    @title = params[:title]
    @genre = params[:genre]
    @author = params[:author]
  end


  # Метод to_s возвращает строку с описанием книги и дергает родительский метод
  # to_s, чтобы склеить эту строку с ценой и остатком.
  def to_s
    "Книга «#{@title}», #{@genre}, автор — #{@author}, цена - #{@price}, остаток - #{@amount}"
  end
end