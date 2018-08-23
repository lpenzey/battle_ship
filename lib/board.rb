class Board
  attr_reader :board

  def initialize(height = 5, width = 6)
    @board = Array.new(height, 0) { Array.new(width, 0) }
  end

  def place_move(x, y, marker)
    @board[x][y] = marker
    @board
  end
end
