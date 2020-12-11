#!/usr/bin/env ruby

require_relative '../lib/game'
require_relative '../lib/instructions'

def board(arr)
  1.upto(9) do |i|
    print arr[i].nil? ? '   ' : " #{arr[i]} "
    print '|' if i % 3 != 0
    puts '' if (i % 3).zero?
    puts '---+---+---' if (i % 3).zero? && i != 9
  end
end

puts 'Tic Tac Toe'
Instructions.show_instructions
player = 'X'
game = Game.new

while game.winner.nil?
  p "Player #{player}, please select your move:"
  move = gets.chomp.to_i
  p game.turn(move, player)
  player = player == 'X' ? 'O' : 'X'
  board(game.see_game)
end

p game.print_winner
