#!/usr/bin/env ruby

require_relative '../lib/game'
require_relative '../lib/instructions'
require_relative '../lib/player'

def board(arr)
  puts "\n"
  1.upto(9) do |i|
    print arr[i].nil? ? '   ' : " #{arr[i]} "
    print '|' if i % 3 != 0
    puts '' if (i % 3).zero?
    puts '---+---+---' if (i % 3).zero? && i != 9
  end
  puts "\n"
end

puts "\s\s\s\sTic Tac Toe"
puts Instructions.show_instructions
game = Game.new
puts "Player \'X\', please type your name."
player_x = Player.new(gets.chomp, 'X')
game.players.push(player_x)
puts "\nGreat! #{player_x.name}, you are \'X\'.\n\n"
puts "Now, Player \'O\', please type your name."
player_o = Player.new(gets.chomp, 'O')
game.players.push(player_o)
puts "\nGreat! #{player_o.name}, you are \'O\'.\n\n"
puts 'Let\'s begin!'
board(game.see_game)

while game.winner.nil?
  puts "#{game.players[game.player_turn].name}, please select your move:"
  move = gets.chomp.to_i
  puts game.turn(move, game.players[game.player_turn])
  board(game.see_game)
end

p game.print_winner
