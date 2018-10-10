require 'output'

describe Output do 
    let (:output) { Output.new }
    #let (:board)  { Board.new }

    describe '.show_board' do 
        it 'prints board to the console' do 

            expect { show_board }.to output("[0,0,0,0,0,0]\n
                                             [0,0,0,0,0,0]\n
                                             [0,0,0,0,0,0]\n
                                             [0,0,0,0,0,0]\n
                                             [0,0,0,0,0,0]").to_stdout
        end
    end
end