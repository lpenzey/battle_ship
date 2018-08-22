require 'board'

describe Board do
  let (:board) { Board.new }

  describe '.open_space?' do
    it 'returns true for an empty space' do
      result = board.open_space?(0, 1)

      expect(result).to eq true
    end

    it 'returns false for a full space' do
      result = board.open_space?(0, 0)

      expect(result).to eq false
    end
  end

  describe '.has_neighbor?' do
    it 'returns false for an empty board' do
      result = board.has_neighbor?(2, 2)

      expect(result).to eq false
    end

    it 'returns true for a spot with a filled neighbor' do
      result = board.has_neighbor?(0, 1)

      expect(result).to eq true
    end
  end
end
