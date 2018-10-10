class GameLoop

    def initialize(board, input, output)
        @board = board
        @input = input
        @output = output
    end    

    def loop

    end

    def turn
        get_guess
        check_guess
    end

    def check_guess
    end    

end