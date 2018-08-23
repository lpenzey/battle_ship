require 'validation'

describe Validation do
  let (:validator) { Validation.new }

  describe '.valid_first_move' do
    it 'checks if a spot is open or not ' do
      board = [
        [0, 1, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0]
      ]

      [
        [0, 0, true],
        [0, 1, false],
        [0, 2, true]
      ].each do |x, y, bool|
        expect(validator.valid_first_move?(board, x, y)).to eq(bool)
      end
    end
  end

  describe '.valid_second_move?' do
    it 'checks if a position is open and next to the previous placement' do
      board = [
        [0, 1, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0],
        [0, 2, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0]
      ]

      [
        [0, 0, 1, true],
        [0, 3, 1, false],
        [2, 0, 2, true]
      ].each do |x, y, ship, bool|
        expect(validator.valid_second_move?(board, x, y, ship)).to eq(bool)
      end
    end
  end
end
