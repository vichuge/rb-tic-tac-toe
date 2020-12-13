class Player
  attr_accessor :name
  attr_reader :symbol

  def initialize(name, symbol)
    @name = name
    @symbol = symbol
  end
end
