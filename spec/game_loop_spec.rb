require 'game_loop'
require 'board'
require 'Input'
require 'Output'

describe GameLoop do 
    let (:looper) { GameLoop.new(Board.new, Input.new, Output.new) }

    describe '.loop' do 
    it 'can access the board' do 
        result = looper.loop

        expect(result).to eql([[0, 0, 0, 0, 0, 0],
                               [0, 0, 0, 0, 0, 0],
                               [0, 0, 0, 0, 0, 0],
                               [0, 0, 0, 0, 0, 0],
                               [0, 0, 0, 0, 0, 0]])
    end
end
end