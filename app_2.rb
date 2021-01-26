require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

def menu
puts """
    -------------------------------------------------
    |            Welcome to 'A POO GAME'            |
    |   The goal is to be the last men standing !   |
    -------------------------------------------------
    
"""
print "Enter player's name: > "
user = HumanPlayer.new(gets.chomp.to_s)                #Getting input from user to create a new Human class player
ennemies = [player1 = Player.new("José"),
player2 = Player.new("Josiane")]
puts "Current players states: "
puts
puts user.player_state
puts player1.player_state
puts player2.player_state
puts "FIGHT !"
puts
user_choice = ""
while user.health >0 && (player1.health > 0 || player2.health >0)
  puts """
What action do you want to do ?
a - Look for a better weapon
z - Look for a Medkit

Attack a nearby ennemy:
"""
if player1.health > 0
  puts "1 - #{player1.name} has #{player1.health} health points"
  else 
  puts "1 - #{player1.name} is dead"
  end
if player2.health > 0  
  puts "2 - #{player2.name} has #{player2.health} health points"
  else 
  puts "2 - #{player2.name} is dead"
end

end

end
menu


binding.pry

