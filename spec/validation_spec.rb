require 'validation'

describe Validation do
  let (:validator) { Validation.new }

  describe '.open_space' do
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
        expect(validator.open_space?(board, x, y)).to eq(bool)
      end
    end
  end

  describe '.has_neighbor' do
    it 'checks if a position has a neighboring placement' do
      board = [
        [0, 1, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0]
      ]

      [
        [0, 0, true],
        [0, 3, false],
        [0, 4, false]
      ].each do |x, y, bool|
        expect(validator.has_neighbor?(board, x, y)).to eq(bool)
      end
    end
  end
end
