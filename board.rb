class Board

    attr_accessor :board
    WIN_COMBINATIONS =[
        [0,1,2],
        [3,4,5],
        [6,7,8],
        [0,3,6],
        [1,4,7],
        [2,5,8],
        [0,4,8],
        [2,4,6]
       ]

    def initialize

        #9 indexes to represent the positions on our board
        @board = [' ',' ',' ',' ',' ',' ',' ',' ',' ']

    end

    def play 
        
        puts "\nWelcome to tic tac toe"

        puts "\nPlayer 1 please enter your name:"
        player1 = gets.chomp

        puts "\n#{player1}, your game marker is 'X'\n"
        player1_marker = 'X'

        puts "\nPlayer 2 please enter your name:"
        player2 = gets.chomp
        player2_marker = 'O'

        puts "\n#{player2}, your game marker is 'O'"

        puts "\nRULES: Each player will take turns selecting a number from 1 to 9 that cooresponds with a space on the game board below. The first player to get 3 of his/her marks in a row (up, down, across, or diagonally) is the winner\n\n"
        
        #We display our board with numeric values that represent each spot the players can choose
        @board=*(1..9)
        display_board
        #We must reset our board for game play; removes number refrences on the board
        @board=Array.new(9) {|i| ' '}
        
        #
        player_play = current_player.eql?(player1_marker) ? player1 : player2
        puts "\nYour turn #{player_play} please enter a value from 1 to 9"
        
        players_choice = gets.chomp
        puts players_choice

        if valid_move?(input_to_index(players_choice))
            move(input_to_index(players_choice), player1_marker)
            display_board
            puts board
        elsif position_taken?(players_choice)
            puts "This position is taken please enter a new value"
            players_choice = gets.chomp
        else
            puts "Value entered is outside of the range of 1 to 9, please try again"
            players_choice = gets.chomps
        end


    end

    

   

    def display_board
        #We use string interpolation to draw players marks on our board
        puts " #{board[0]} | #{board[1]} | #{board[2]}"
        puts "-----------"
        puts " #{board[3]} | #{board[4]} | #{board[5]}"
        puts "-----------"
        puts " #{board[6]} | #{board[7]} | #{board[8]}"

    end 

    def input_to_index(string)

        @choice = (string.to_i)-1 
    #since players will view each space on our board from 1-9 we must subtract 1 since we are referencing an index from 0 to 8
    end

    def move(input_to_index, player_symbol)
        board[input_to_index] = player_symbol
    end

    def position_taken?(input_to_index)
        board[input_to_index] == 'X' ||  board[input_to_index] == 'O' ? true : false
    end

    def valid_move?(input_to_index)

        #if the position we have selected is not (!) taken & that position exists on the board then our move is valid
        !(position_taken?(input_to_index))&& @board[input_to_index] ? true : false

    end

    def current_player
        turn_count % 2 == 0 ? 'O' : 'X'
    end
    
    def turn_count
 
        count = 0

        board.each do |i|
            count += 1 if i == 'X' || i == 'O'
        end 
        count 
    end


    def winner?
    end

    def tie_game?
    end

    def game_over?
    end

    def new_game
    end


    def fill_space

        if space_is_empty?
            move(input_to_index(string), player_symbol)
        end
        display_board
    end



   
end



game_1 = Board.new
game_1.play