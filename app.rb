require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../BDD", __FILE__)
require_relative 'lib/app/game.rb'
require_relative 'lib/app/board.rb'
require_relative 'lib/app/boardcase.rb'
require_relative 'lib/app/player.rb'


game1 = Game.new
  
