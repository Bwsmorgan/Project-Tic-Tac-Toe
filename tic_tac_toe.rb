module Move
    # x represents the row y represents the column
    @@player_count = []

    def move(x, y,symbol)
      # convert y value to appropriate index on tic tac toe board
      #convert y value to appropriate index on tic tac toe board
      y == 1 ? y = 0 : (y == 2 ? y = 4 : (y == 3 ? y = 7 : 'Error'))
  
      if 0 > x && x > 3 || 0 > y && y > 3
        puts 'Error: select a value between 1 & 3 inclusive'
  
      else
  
        player_moves << [x, y]
        puts player_moves[0][0]
        symbol
        return player_moves

        
  
      end
    end
end

class Board   
    include Move
    attr_accessor :row_one, :row_two, :row_three
  def initialize


    # index 1, 4, 7 are the indexes we will fill
    @row_one = '[ ][ ][ ]'
    @row_two = '[ ][ ][ ]'
    @row_three = '[ ][ ][ ]'

    puts row_one
    puts row_two
    puts row_three
  end

  def update_board(move)
    puts move[0][1]

    if move[0][0] == 1
        row_one[move[0][1]]='O'
        puts row_one
        puts row_two
        puts row_three

    elsif move[0][0] == 2
        row_two[move[0][1]]
        puts row_one
        puts row_two
        puts row_three

    elsif move[0][0] == 3
        row_three[move[0][1]]
        puts row_one
        puts row_two
        puts row_three

    end
    

  end

end

class Player
    include Move
  attr_accessor :symbol,:player_name,:player_moves

  #@@player_count = []

  def initialize(player_name, symbol)
    @player_name = player_name
    @player_moves = []
    @symbol = symbol
    "Hi #{player_name}"

  end

end



game1 = Board.new

player_one = Player.new("Brendan", "O")

p1_move = player_one.move(1,2,"0")

game1.update_board(p1_move)