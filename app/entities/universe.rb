class Universe

  attr_accessor :name, :kingdoms, :messages  
  
  def initialize(name = "Southeros", kingdoms)
    self.name = name 
    self.kingdoms = Hash.new
    kingdoms.each do |kingdom|
      self.kingdoms[kingdom.name.downcase] = kingdom
    end 
    self.messages = []
  end 

  def send_message(message)
    self.kingdoms[message.to.name.downcase].get_message(message)
  end
  
  def ruler 
    self.kingdoms.values.select { |kingdom| kingdom.allies.length >=3 }.first
  end 

end 



  