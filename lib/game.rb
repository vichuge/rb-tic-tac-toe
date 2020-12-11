# rubocop: disable Metrics/PerceivedComplexity, Metrics/CyclomaticComplexity, Metrics/AbcSize

class Game
  attr_accessor :game
  attr_reader :winner

  def initialize
    @winner = nil
    @game = Array.new(10)
    @game[0] = 'empty'
  end

  def see_game
    @game
  end

  def turn(move, player)
    if !move.is_a?(Integer)
      'Please, choose a number'
    elsif move > 9 && move <= 0
      'error!, select a number inside 1 to 9'
    elsif !@game[move].nil?
      'error!, that position is already taken'
    else
      @game[move] = player
      win
      "You have selected position #{move}. Now your move is displayed on the board."
    end
  end

  def print_winner
    @winner == 'draw' ? 'It\'s a draw' : "Congrats, the winner is #{@winner}"
  end

  def win
    if @game[1] == @game[2] && @game[2] == @game[3]
      @winner = @game[1]
    elsif @game[4] == @game[5] && @game[5] == @game[6]
      @winner = @game[4]
    elsif @game[7] == @game[8] && @game[8] == @game[9]
      @winner = @game[7]
    elsif @game[1] == @game[4] && @game[4] == @game[7]
      @winner = @game[1]
    elsif @game[2] == @game[5] && @game[5] == @game[8]
      @winner = @game[2]
    elsif @game[3] == @game[6] && @game[6] == @game[9]
      @winner = @game[3]
    elsif @game[1] == @game[5] && @game[5] == @game[9]
      @winner = @game[1]
    elsif @game[3] == @game[5] && @game[5] == @game[7]
      @winner = @game[3]
    elsif @game.all?
      @winner = 'draw'
    end
  end
end

# rubocop: enable Metrics/PerceivedComplexity, Metrics/CyclomaticComplexity, Metrics/AbcSize
