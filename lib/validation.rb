class Validation
  def open_space?(board, x, y)
    board[x][y] == 0
  end

  def has_neighbor?(board, x, y)
    neighbors = [
      board[x - 1][y - 1] == 1,
      board[x - 1][y] == 1,
      board[x - 1][x + 1] == 1,
      board[x][y - 1] == 1,
      board[x][y + 1] == 1,
      board[x + 1][y - 1] == 1,
      board[x + 1][y] == 1,
      board[x + 1][y + 1] == 1
    ]
    neighbors.include?(true)
  end
end
