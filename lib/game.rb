class Game
    attr_accessor :game
    attr_reader :winner
    @@winner = nil

    def initialize
        @@game = Array.new(10)
    end
    def turn(move,player)
        @@game[move] = player
        win
    end

    def win
        if @@game[1] == @@game[2] && @@game[2] == @@game[3]
            @@winner = @@game[1]
        elsif @@game[4] == @@game[5] && @@game[5] == @@game[6]
            @@winner = @@game[4]
        elsif @@game[7] == @@game[8] && @@game[8] == @@game[9]
            @@winner = @@game[7]
        elsif @@game[1] == @@game[4] && @@game[4] == @@game[7]
            @@winner = @@game[1]
        elsif @@game[2] == @@game[5] && @@game[5] == @@game[8]
            @@winner = @@game[2]
        elsif @@game[3] == @@game[6] && @@game[6] == @@game[9]
            @@winner = @@game[3]
        elsif @@game[1] == @@game[5] && @@game[5] == @@game[9]
            @@winner = @@game[1]
        elsif @@game[3] == @@game[5] && @@game[5] == @@game[7]
            @@winner = @@game[3]
        else
            return nil
        end
    end

end
