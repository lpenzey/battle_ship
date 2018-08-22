require 'get_input'

class Board
  def initialize(height = 5, width = 6)
    @board = Array.new(height, 0) { Array.new(width, 0) }
  end

  def place_ship(size)
    round = 1
    size.times do
      if round == 1
        @human.get_ship_coordinate
      elsif round > 1
        @human.get_ship_coordinate
        until open_space?(@x, @y) && has_neighbor?(@x, @y)
          p 'try again!'
          @human.get_ship_coordinate
        end
      end
      @board[@x][@y] = 1
      round += 1
    end
  end

  def open_space?(x, y)
    @board[x][y] == 0
  end

  def has_neighbor?(x, y)
    neighbors = [
      @board[x - 1][y - 1] == 1,
      @board[x - 1][y] == 1,
      @board[x - 1][x + 1] == 1,
      @board[x][y - 1] == 1,
      @board[x][y + 1] == 1,
      @board[x + 1][y - 1] == 1,
      @board[x + 1][y] == 1,
      @board[x + 1][y + 1] == 1
    ]
    neighbors.include?(true)
  end
end