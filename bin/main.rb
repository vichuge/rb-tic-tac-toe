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
    # Instructions.show_instructions()
    puts 'Welcome to Tic Tac Toe. This is the classic game where you have to mark with an X or
    0 your position in the board.'
    puts 'To play, each player will have to select a position in the grid by choosing a number from 1 to 9.'
    puts 'Each number corresponds to one of the positions in the grid. You can choose any position that is empty.'
    puts 'The first player to make a line of three consecutive marks wins the game.'
    puts 'The line can horizontal, vertical or diagonal.'
  end

  player = 'X'
  # game = Game.new()
  game = true

  # while game.win.nil? || game.any?
  while game
    p "Player #{player} select your move:"
    move = gets.chomp.to_i
    puts "You have selected position #{move}. Now your move is displayed on the board."
    arr[move] = player
    # game.turn(player,move)
    player = player == 'X' ? 'O' : 'X'
    game = false
    board(arr)
  end

  # game.win.nil ? 'It\'s a draw' : 'Congrats, the winner is #{game.win}'

  p 'Start again?'
  start = gets.chomp.to_s.downcase
end

# rubocop: enable Metrics/PerceivedComplexity, Metrics/CyclomaticComplexity
