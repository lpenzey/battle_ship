require 'board'

describe Board do
  let (:board) { Board.new }

  it 'returns a blank board' do
    grid = [
      [0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0]
    ]
    expect(board.board).to eq(grid)
  end

  it 'prints the board to '
end
