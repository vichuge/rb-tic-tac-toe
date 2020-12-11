#!/usr/bin/env ruby
# rubocop: disable Metrics/PerceivedComplexity, Metrics/CyclomaticComplexity

require_relative '../lib/game'
require_relative '../lib/instructions'

def board(arr)
  p " #{arr[1].nil? ? ' ' : arr[1]} | #{arr[2].nil? ? ' ' : arr[2]} | #{arr[3].nil? ? ' ' : arr[3]}"
  p '---+---+---'
  p " #{arr[4].nil? ? ' ' : arr[4]} | #{arr[5].nil? ? ' ' : arr[5]} | #{arr[6].nil? ? ' ' : arr[6]}"
  p '---+---+---'
  p " #{arr[7].nil? ? ' ' : arr[7]} | #{arr[8].nil? ? ' ' : arr[8]} | #{arr[9].nil? ? ' ' : arr[9]}"
end

puts 'Tic Tac Toe'
p 'Read instructions?'

start = 'yes'
arr = Array.new(10)

while start == 'yes'
  val = gets.chomp.to_s.downcase
  if val == 'yes'
    Instructions.show_instructions
  end

  player = 'X'
  game = Game.new()

  while game.win.nil? || game.game.all?
    p "Player #{player} select your move:"
    move = gets.chomp.to_i
    puts "You have selected position #{move}. Now your move is displayed on the board."
    game.turn(move,player)
    player = player == 'X' ? 'O' : 'X'
    p game.game
    board(game.game)
  end

  game.win.nil ? 'It\'s a draw' : 'Congrats, the winner is #{game.winner}'

  p 'Start again?'
  start = gets.chomp.to_s.downcase
end

# rubocop: enable Metrics/PerceivedComplexity, Metrics/CyclomaticComplexity
