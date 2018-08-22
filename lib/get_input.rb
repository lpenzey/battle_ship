# frozen_string_literal: true

class GetInput
  def initialize
    @board_width_keys = { 'a' => 0, 'b' => 1, 'c' => 2, 'd' => 3, 'e' => 4, 'f' => 5, 'g' => 6, 'h' => 7, 'i' => 8, 'j' => 9 }
    @board_height_keys = { '1' => 0, '2' => 1, '3' => 2, '4' => 3, '5' => 4, '6' => 5, '7' => 6, '8' => 7, '9' => 8, '10' => 9 }
  end

  def get_ship_coordinate
    spot = $stdin.gets.chomp.split(//)
    @x = @board_width_keys[spot[0]]
    @y = @board_height_keys[spot[1]]
    [@x, @y]
  end

  def valid_input; end
end
