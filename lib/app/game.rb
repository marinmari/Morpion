require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../BDD", __FILE__)
require_relative 'board.rb'
require_relative 'boardcase.rb'
require_relative 'player.rb'

class Game 
  attr_accessor :player1, :player2 

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
    puts "Qui est le second joueur ?"
    print ">"
    @player2 = Player.new(gets.chomp, "O")
    puts player2.show_player
  end
  #binding.pry
end