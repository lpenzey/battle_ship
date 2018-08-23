require 'validation'

describe Validation do 
    let (:validator) { Validation.new }

    describe '.open_space' do 
        it "returns true if a space is open" do
            board = [
                [0, 1, 0, 0, 0, 0],
                [0, 0, 0, 0, 0, 0],
                [0, 0, 0, 0, 0, 0],
                [0, 0, 0, 0, 0, 0],
                [0, 0, 0, 0, 0, 0]]
    
            [ 
            [[0],[0], true],
            [[0],[1], false], 
            [[0][2], true]
            ].each do |x, y, bool|
            expect(validator.open_space?(board, x, y)).to eq(bool)

        result = validator.open_space?(0,0)

        expect(result).to eq true
        end
    end
    end
end