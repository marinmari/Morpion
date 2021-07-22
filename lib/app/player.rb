require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
 
#Chaque player doit avoir un nom et un symbole (/!\ X ou O)
class Player
  attr_accessor :player_name, :player_symbol

  #Uniquement si symbol == X || O - réfléchir à une attribution aléatoire :)
  def initialize(name, symbol)
    @player_name = name 
    @player_symbol= symbol
    #Faire un tableau qui stock les joueurs ??
  end 

  def show_player
    puts "#{@player_name}, tu as le symbole : #{@player_symbol}"
  end

  #Indiquer quel joueur est en train de jouer
  def show_current_player
    puts "#{@player_name}, à toi de jouer !"
  end
binding.pry


end