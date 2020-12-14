require './lib/game'

describe Game do
  let(:game) { Game.new }

  describe '#see_game' do
    it 'return the game values' do
      expect(game.see_game).to eql(['empty', nil, nil, nil, nil, nil, nil, nil, nil, nil])
    end
  end

  describe '#turn' do
    it 'make a turn in the board' do
      expect(game.turn(3, 'X')).to eql("\nYou have selected position 3. Now your move is displayed on the board.\n")
    end
  end

  describe '#change_turn' do
    it 'Change the player turn inside the game' do
      expect(game.change_turn).to eql('O')
    end
  end

  describe '#print_winner' do
    it 'Show the winner or draw according the game' do
      expect(game.print_winner).to eql('Congrats, the winner is ')
    end
  end

  describe '#win' do
    it 'Assign the winner after a moverment' do
      expect(game.win).to eql(nil)
    end
  end
end
