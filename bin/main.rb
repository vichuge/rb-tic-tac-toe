#!/usr/bin/env ruby

require_relative '../lib/game'
require_relative '../lib/instructions'

def board(arr)
    p " #{arr[1].nil? ? ' ' : arr[1]} | #{arr[2].nil? ? ' ' : arr[2]} | #{arr[3].nil? ? ' ' : arr[3]}"
    p "---+---+---"
    p " #{arr[4].nil? ? ' ' : arr[4]} | #{arr[5].nil? ? ' ' : arr[5]} | #{arr[6].nil? ? ' ' : arr[6]}"
    p "---+---+---" 
    p " #{arr[7].nil? ? ' ' : arr[7]} | #{arr[8].nil? ? ' ' : arr[8]} | #{arr[9].nil? ? ' ' : arr[9]}"
end

p "Hello and welcome..."
p "Read instructions?"

start = 'yes'
Arr = Array.new(10)
while start == 'yes'

    
val = gets.chomp.to_s.downcase
if val == 'yes'
    #Instructions.show_instructions()
    p "Instructions..."
end

player = 'X'
#game = Game.new()
game = true


#while game.win.nil? || game.any?
while game
  p "Player #{player} select your move:"
  move = gets.chomp
  #game.turn(player,move)
  player == 'X' ? player = 'O' : player = 'X'
  game = false
  board(Array.new(10))
end

#game.win.nil ? 'It\'s a draw' : 'Congrats, the winner is #{game.win}'

p "Start again?"
start = gets.chomp.to_s.downcase

end

