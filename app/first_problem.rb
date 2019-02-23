class FirstProblem
  
  attr_accessor :universe

  def initialize
    kingdoms = []
    Config.instance.kingdoms.each do |x,v|
      kingdoms <<  Kingdom.new(x.to_s, v[:emblum], v[:king]) 
    end  
    self.universe = Universe.new("Southeros", kingdoms)  
  end 

  def start
  	entry
  	send_messages
  	print_output
  end 

  private 
    
    def entry
	  puts "Welcome to Golden Crown"
	  puts "We are in #{self.universe.name}"
	  puts "Following kings rule on the given kingdoms"
	  puts "kingdom    king"
	  self.universe.kingdoms.each_value do |kingdom|
	    puts "#{kingdom.name}    #{kingdom.king}"
	  end
    end

    def send_messages()
      from = self.universe.kingdoms["space"]
      File.open("input.txt", "r") do |f|
    		f.each_line do |line|
    		  line = line.split(',')
    		  to_name = line.first.strip.downcase
    		  body = line.last.strip
    		  message = Message.new(self.universe.kingdoms[to_name], from, body)
    		  self.universe.send_message(message)
    		end
	    end
    end 	
    
    def print_output
      ruler = self.universe.ruler
      if !ruler.blank?
       puts "Ruler of the #{self.universe.name} : King #{ruler.king}"
       puts "Allies: #{ruler.list_allies}"
      else 
       puts "Ruler of the #{self.universe.name} : None"
       puts "Allies: None"
      end
    end 
end 