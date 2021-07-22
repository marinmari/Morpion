require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../BDD", __FILE__)
require_relative 'board.rb'
require_relative 'boardcase.rb'
require_relative 'player.rb'

class Game 
  attr_accessor :player1, :player2, :board1
  @@players_array = [ ]

  def initialize
    puts " "
    puts " "
    puts "- - - - - - - - - - - - - - - - - - - - - - -"
    puts "|       Bienvenu sur Morback 0.0000001      |"
    puts "- - - - - - - - - - - - - - - - - - - - - - -"
    puts " "
    puts " "
    puts "Quel est ton nom ?"
    print ">"
    @player1 = Player.new(gets.chomp, "X")
    puts player1.show_player
    @@players_array << player1
    puts "Qui est le second joueur ?"
    print ">"
    @player2 = Player.new(gets.chomp, "O")
    puts player2.show_player
    @@players_array << player2
    @board1 = Board.new
    board1.put_in_the_array
    board1.show_board
  end

  def ask_choice(turn_player)
    puts " "
    puts "#{turn_player.player_name}, c'est ton tour de jouer !"
    puts " "
    puts "Sur quelle case souhaites tu jouer ? Saisis une valeur A1, A2, A3, B1, B2, B3, C1, C2, C3"
    case_choisie = gets.chomp
    return case_choisie
  end
  
  def start
    x = rand (1..2)
    if x == 1 
      player1.ask_choice
    else 
      player2.ask_choice
    end
  end
  #binding.pry
end