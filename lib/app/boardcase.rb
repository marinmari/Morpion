require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require_relative 'board.rb'
require_relative 'game.rb'
require_relative 'player.rb'


class BoardCase 
  attr_accessor :case_position, :case_mark

  def initialize(position, mark)
    @case_position = position
    @case_mark = mark
  end
end
