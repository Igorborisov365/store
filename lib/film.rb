# encoding: utf-8
#
# Класс Фильм
class Film < Product

  attr_reader :title, :year, :director

  def initialize(params)
    super

    @title = params[:title]
    @year = params[:year]
    @director = params[:director]
  end

  # Метод to_s возвращает строку с описанием книги и дергает родительский метод
  # to_s, чтобы склеить эту строку с ценой и остатком.

  def to_s
    "Фильм «#{@title}», #{@year}, реж. #{@director}, #{super}"
  end

end
