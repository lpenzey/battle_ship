class Validation

  def valid_first_move?(board, x, y)
    open_space?(board, x, y)
  end

  def valid_second_move?(board, x, y, ship)
    open_space?(board, x, y) && has_neighbor?(board, x, y, ship)
  end

  private

  def open_space?(board, x, y)
    board[x][y] == 0
  end

  def has_neighbor?(board, x, y, ship)
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
