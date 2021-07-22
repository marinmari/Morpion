require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../BDD", __FILE__)
require_relative 'game.rb'
require_relative 'boardcase.rb'
require_relative 'player.rb'

#La classe Board permet de représenter le plateau de jeux, il est composé de 9 cases.
#A chaque tour, le plateau voit une de ses case modifiée 
#La partie se termine dans deux cas : 9 cases remplies ou 3 cases du même symbole alignées (/!\ - quelles sont les potentielles conditions de victoire ?)

class Board
  attr_accessor :a1, :a2, :a3, :b1, :b2, :b3, :c1, :c2, :c3
  @@board_grid = [ ] 
  #@@board_array = [ ]
  

  def initialize
    board_grid = [""]
   # board_array = [["", ""]]
    @a1 = BoardCase.new("A1", " ")
    @a2 = BoardCase.new("A2", " ")
    @a3 = BoardCase.new("A3", " ")
    @b1 = BoardCase.new("B1", " ")
    @b2 = BoardCase.new("B2", " ")
    @b3 = BoardCase.new("B3", " ")
    @c1 = BoardCase.new("C1", " ")
    @c2 = BoardCase.new("C2", " ")
    @c3 = BoardCase.new("C3", " ")
  end
  def put_in_the_array
    @@board_grid = [[@a1.case_mark, @a2.case_mark, @a3.case_mark], [@b1.case_mark, @b2.case_mark, @b3.case_mark], [@c1.case_mark, @c2.case_mark, @c3.case_mark]]
    #@@board_array = [@a1, @a2, @a3, @b1, @b2, @b3, @c1, @c2, @c3]
  end

  def show_board
    puts "Voici le plateau de jeu :"
    
    @@board_grid
    puts " "
    puts "         " + "#{@@board_grid[0][0]} | #{@@board_grid[1][0]}| #{@@board_grid[2][0]}"
    puts "         " + "--------"
    puts "         " + "#{@@board_grid[0][1]} | #{@@board_grid[1][1]}| #{@@board_grid[2][1]}"
    puts "         " + "--------"
    puts "         " + "#{@@board_grid[0][2]} | #{@@board_grid[1][2]}| #{@@board_grid[2][2]}"
    puts " "
  end



  #binding.pry
end

