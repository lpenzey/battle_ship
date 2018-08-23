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

  describe '.place_move' do
    [
      [2, 0, 1]
    ].each do |x, y, marker|
      it 'returns a board with a ship segment placed' do
        grid = [
          [0, 0, 0, 0, 0, 0],
          [0, 0, 0, 0, 0, 0],
          [1, 0, 0, 0, 0, 0],
          [0, 0, 0, 0, 0, 0],
          [0, 0, 0, 0, 0, 0]
        ]
        expect(board.place_move(x, y, marker)).to eq(grid)
      end
    end
  end
end
