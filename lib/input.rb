class Input
  
  def initialize
    @board_width_keys = { 'a' => 0, 'b' => 1, 'c' => 2, 'd' => 3, 'e' => 4, 'f' => 5, 'g' => 6, 'h' => 7, 'i' => 8, 'j' => 9 }
    @board_height_keys = { '1' => 0, '2' => 1, '3' => 2, '4' => 3, '5' => 4, '6' => 5, '7' => 6, '8' => 7, '9' => 8, '10' => 9 }
  end

  def get_ship_coordinate
    spot = $stdin.gets.chomp.split(//)
    x = @board_width_keys[spot[0]]
    y = @board_height_keys[spot[1]]
    start_coordinates = [x, y]
    #direction = $stdin.gets.chomp.split(//)
  end

  def place_ship(size)
    round = 1
    size.times do
      if round == 1
        @human.get_ship_coordinate
      elsif round > 1
        @human.get_ship_coordinate
        until open_space?(@x, @y) && has_neighbor?(@x, @y)
          p 'try again!'
          @human.get_ship_coordinate
        end
      end
      board[x][y] = 1
      round += 1
    end
  end
end
