require 'singleton'

class Config
  include Singleton

  attr_accessor :kingdoms

  def initialize
    @kingdoms = {
      :Space =>   { :emblum => "Gorilla", :king => "Shan"}, 
      :Land =>  { :emblum => "Panda", :king => "Sasuke"},
      :Water =>  { :emblum => "Octopus", :king => "Itachi"},
      :Ice =>  { :emblum => "Mammoth", :king => "Luffy"},
      :Air =>  { :emblum => "Owl", :king => "Naruto"},
      :Fire =>  { :emblum => "Dragon", :king => "Boruto"}       
    } 
  end

end 