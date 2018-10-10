class Board
  attr_reader :board

  def initialize(height = 5, width = 6)
    @board = Array.new(height, 0) { Array.new(width, 0) }
  end

  def assign_ship(size)
    count = 1
    size.times do
      x = rand(5)
      y = rand(6)
        if is_open?(x,y) 
          @board[x][y] = "S#{count}"

        else
        end
        count += 1 
        end
        p @board
  end

  def is_open?(x, y)
    @board[x][y] == 0
  end  

  def neighbors
    neighbors = [
      board[x - 1][y - 1] == ship,
      board[x - 1][y] == ship,
      board[x - 1][x + 1] == ship,
      board[x][y - 1] == ship,
      board[x][y + 1] == ship,
      board[x + 1][y - 1] == ship,
      board[x + 1][y] == ship,
      board[x + 1][y + 1] == ship
    ]
    neighbors.include?(true)
  end

end