class Game
  attr_accessor :game, :name, :players, :player_turn
  attr_reader :winner

  def initialize
    @winner = nil
    @game = Array.new(10)
    @game[0] = 'empty'
    @players = []
    @player_turn = 0
  end

  def see_game
    @game
  end

  def turn(move, player)
    if move > 9 || move <= 0
      "error! Please select any number from 1 to 9\n"
    elsif !@game[move].nil?
      "error! That position is already taken\n"
    else
      @game[move] = player.symbol
      win(player.name)
      change_turn
      "\n#{player.name}, you selected position #{move}. Now your move is displayed on the board.\n"
    end
  end

  def change_turn
    self.player_turn = @player_turn.zero? ? 1 : 0
  end

  def print_winner
    @winner == 'draw' ? 'It\'s a draw!' : "Congrats, #{@winner}! You won this match!"
  end

  def win(player)
    if @game[1] && @game[1] == @game[2] && @game[2] == @game[3] ||
       @game[4] && @game[4] == @game[5] && @game[5] == @game[6] ||
       @game[7] && @game[7] == @game[8] && @game[8] == @game[9] ||
       @game[1] && @game[1] == @game[4] && @game[4] == @game[7] ||
       @game[2] && @game[2] == @game[5] && @game[5] == @game[8] ||
       @game[3] && @game[3] == @game[6] && @game[6] == @game[9] ||
       @game[1] && @game[1] == @game[5] && @game[5] == @game[9] ||
       @game[3] && @game[3] == @game[5] && @game[5] == @game[7]
      @winner = player
    elsif @game.all?
      @winner = 'draw'
    end
  end
end
