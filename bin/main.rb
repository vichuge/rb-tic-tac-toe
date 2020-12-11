#!/usr/bin/env ruby
# rubocop: disable Metrics/PerceivedComplexity, Metrics/CyclomaticComplexity

require_relative '../lib/game'
require_relative '../lib/instructions'

def board(arr)
  p " #{arr[1].nil? ? ' ' : arr[1]} | #{arr[2].nil? ? ' ' : arr[2]} | #{arr[3].nil? ? ' ' : arr[3]} "
  p '---+---+---'
  p " #{arr[4].nil? ? ' ' : arr[4]} | #{arr[5].nil? ? ' ' : arr[5]} | #{arr[6].nil? ? ' ' : arr[6]} "
  p '---+---+---'
  p " #{arr[7].nil? ? ' ' : arr[7]} | #{arr[8].nil? ? ' ' : arr[8]} | #{arr[9].nil? ? ' ' : arr[9]} "
end

puts 'Tic Tac Toe'
Instructions.show_instructions
player = 'X'
game = Game.new

while game.win.nil?
  p "Player #{player} select your move:"
  move = gets.chomp.to_i
  p game.turn(move, player)
  player = player == 'X' ? 'O' : 'X'
  board(game.see_game)
end

p game.print_winner
# rubocop: enable Metrics/PerceivedComplexity, Metrics/CyclomaticComplexity
