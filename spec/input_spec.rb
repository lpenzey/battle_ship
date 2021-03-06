require 'input'
require 'stringio'

describe Input do
  let (:human) { Input.new }

  describe '.get_ship_coordinate' do
    before do
      $stdin = StringIO.new("a1\n")
    end

    after do
      $stdin = STDIN
    end

    it 'returns x and y coordinates from a string' do
      result = human.get_ship_coordinate

      expect(result).to eq([0, 0])
    end
  end
end
