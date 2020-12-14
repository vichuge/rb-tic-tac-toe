class Player
  attr_accessor :name, :moves
  attr_reader :symbol

  def initialize(name, symbol)
    @name = name
    @symbol = symbol
    @moves = []
  end
end
