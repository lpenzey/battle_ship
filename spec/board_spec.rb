require 'board'

describe Board do
  let (:board) { Board.new }

  it 'returns a blank board' do
    grid = [
      [0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0]
    ]
    expect(board.board).to eq(grid)
  end

  describe '.assign_ships' do 
    board = Board.new
    it 'places two ships randomly on the private board' do 

    result = board.assign_ship(2)

    expect(result).to eq "S"
    end
  end
end

#Example Stub
#def index
#  @recipes ||= @user.recipes.order(:title) if @user
#  @recipes ||= Recipe.order(:title)
#end
#
#describe '#index' do 
#it 'orders recipes by title' do
#  recipes_controller.stub(:set_user) <-- ensures that condition of @user is set to get to second line of #index
#  Recipe.should_receive(:order).with(:title <-- tests that Recipe receives the method #order and that #order has argument of 'titles')
#  recipes_controller.indexend
#end