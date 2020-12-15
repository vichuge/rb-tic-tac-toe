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

    it 'make a wrong move in the board' do
      expect(game.turn(10, 'X')).to eql("error! Please select any number from 1 to 9\n")
    end

    it 'make a movement in a space already assigned' do
      game.turn(9, 'O')
      expect(game.turn(9, 'X')).to eql("error! That position is already taken\n")
    end
  end

  describe '#change_turn' do
    it 'Change the player turn inside the game' do
      expect(game.change_turn).to eql('O')
    end
  end

  describe '#print_winner' do
    it 'Show the winner X' do
      game.turn(1, 'X')
      game.turn(2, 'O')
      game.turn(4, 'X')
      game.turn(3, 'O')
      game.turn(7, 'X')
      game.win
      expect(game.print_winner).to eql('Congrats, the winner is X')
    end

    it 'Show the winner O' do
      game.turn(5, 'X')
      game.turn(2, 'O')
      game.turn(4, 'X')
      game.turn(3, 'O')
      game.turn(7, 'X')
      game.turn(1, 'O')
      game.win
      expect(game.print_winner).to eql('Congrats, the winner is O')
    end

    it 'Show the draw according to the game' do
      game.turn(5, 'X')
      game.turn(1, 'O')
      game.turn(2, 'X')
      game.turn(3, 'O')
      game.turn(9, 'X')
      game.turn(6, 'O')
      game.turn(7, 'X')
      game.turn(8, 'O')
      game.turn(4, 'X')
      game.win
      expect(game.print_winner).to eql("It's a draw!")
    end

    it "Negative scenario when we don't have a winner or a draws statement" do
      game.turn(5, 'X')
      game.win
      expect(game.print_winner).to eql('Congrats, the winner is ')
    end
  end

  describe '#win' do
    it "return the winner's move, X in this case" do
      game.turn(1, 'X')
      game.turn(2, 'O')
      game.turn(4, 'X')
      game.turn(3, 'O')
      game.turn(7, 'X')
      game.win
      expect(game.win).to eql('X')
    end

    it "return the winner's move, O in this case" do
      game.turn(5, 'X')
      game.turn(2, 'O')
      game.turn(4, 'X')
      game.turn(3, 'O')
      game.turn(7, 'X')
      game.turn(1, 'O')
      game.win
      expect(game.win).to eql('O')
    end

    it "return the winner's move, draw in this case" do
      game.turn(5, 'X')
      game.turn(1, 'O')
      game.turn(2, 'X')
      game.turn(3, 'O')
      game.turn(9, 'X')
      game.turn(6, 'O')
      game.turn(7, 'X')
      game.turn(8, 'O')
      game.turn(4, 'X')
      game.win
      expect(game.win).to eql('draw')
    end

    it "return nil if the game doesn't have finished" do
      game.turn(5, 'X')
      game.win
      expect(game.win).to eql(nil)
    end
  end
end
