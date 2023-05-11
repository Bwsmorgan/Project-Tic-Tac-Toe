class Player

    attr_accessor :name, :symbol
    #class variable to keep track of the number of player that are created 
    @@player_count = 1

    def initialize

        #Intro banner for when the game first starts
        # if @@player_count == 1
        #     puts "\n\nWELCOME TO RUBY TIC TAC TOE"
        #     puts "---------------------------\n"
        # end

        #While loop ensures that only 3 players are eligible to enter a game
        while @@player_count < 3

            puts "\nPlayer #{@@player_count}, Please enter your name: "
            $name = gets.chomp

            puts "\n#{$name}, please choose a single character to represent your marker:"

            while $symbol = gets.chomp
                case $symbol.length
                when 1
                puts "\nYou've selected '#{$symbol}' as your marker\n"
                break
                else
                puts "Please choose a SINGLE character to represent your marker:"
                end
            end

            @@player_count += 1

        end

    end
end


# player1 = Player.new()
# player2 = Player.new()
# player3 = Player.new()

