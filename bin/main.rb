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

# Instructions.show_instructions()
puts 'Welcome to Tic Tac Toe. This is the classic game where you have to mark with an X or
0 your position in the board.'
puts ''
puts 'To play, each player will have to select a position in the grid by choosing a number from 1 to 9.'
puts 'Each number corresponds to one of the positions in the grid. You can choose any position that is empty.'
puts 'The first player to make a line of three consecutive marks wins the game.'
puts 'The line can horizontal, vertical or diagonal.'
puts ''

p 'Player X select your move:'
gets.chomp.to_i
puts 'You have selected an invalid input. Please choose a number between 1 and 9. Please try again'
gets.chomp.to_i
puts 'You have selected position 1. Now your move is displayed on the board.'
puts ''
puts ' X |   |   '
puts '---+---+---'
puts '   |   |   '
puts '---+---+---'
puts '   |   |   '
puts ''
puts 'It\'s Player 0\'s turn. Please select your move:'
gets.chomp.to_i
puts 'You have selected position 2. Now your move is displayed on the board.'
puts ''
puts ' X | O |   '
puts '---+---+---'
puts '   |   |   '
puts '---+---+---'
puts '   |   |   '
puts ''
puts 'It\'s Player X\'s turn. Please select your move:'
gets.chomp.to_i
puts 'You have selected position 5. Now your move is displayed on the board.'
puts ''
puts ' X | O |   '
puts '---+---+---'
puts '   | X |   '
puts '---+---+---'
puts '   |   |   '
puts ''
puts 'It\'s Player 0\'s turn. Please select your move:'
gets.chomp.to_i
puts 'You have selected position 7. Now your move is displayed on the board.'
puts ''
puts ' X | O |   '
puts '---+---+---'
puts '   | X |   '
puts '---+---+---'
puts ' O |   |   '
puts ''
puts 'It\'s Player X\'s turn. Please select your move:'
gets.chomp.to_i
puts 'You have selected position 9. Now your move is displayed on the board.'
puts ''
puts ' X | O |   '
puts '---+---+---'
puts '   | X |   '
puts '---+---+---'
puts ' O |   | X '
puts ''

# End of Game. Show Game Result
puts 'There are no more moves available. This is a draw.'
puts ''
puts 'Congratulations, Player X! You have made a straight line. You won.'
puts ''
puts ' X | O | O '
puts '---+---+---'
puts ' O | X | O '
puts '---+---+---'
puts ' X | O | X '
puts ''

# rubocop: enable Metrics/PerceivedComplexity, Metrics/CyclomaticComplexity
