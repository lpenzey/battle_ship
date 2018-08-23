class Board
  attr_reader :board

  def initialize(height = 5, width = 6)
    @board = Array.new(height, 0) { Array.new(width, 0) }
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
      @board[@x][@y] = 1
      round += 1
    end
  end
end