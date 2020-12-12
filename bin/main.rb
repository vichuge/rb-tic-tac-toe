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
  puts ''
end

puts "\s\s\s\sTic Tac Toe"
puts Instructions.show_instructions
game = Game.new

while game.winner.nil?
  p "Player #{game.player}, please select your move:"
  move = gets.chomp.to_i
  puts game.turn(move, game.player)
  board(game.see_game)
end

p game.print_winner
