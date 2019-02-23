class Kingdom
  attr_accessor :allies, :name, :emblum, :king
  
  def initialize(name, emblum, king = "")
    self.name = name
    self.emblum = emblum
    self.king = king
    self.allies = []
  end
  

  def get_message(message)  
    if accept_allegiance? message.body
      give_support_to message.from
    end 
  end 
  
  def list_allies 
    self.allies.collect { |ally| ally.name }.join(',')
  end 
  
  private
    
    def give_support_to(kingdom)
      kingdom.allies.push(self)
      kingdom.allies = kingdom.allies.uniq
    end
   

	def accept_allegiance?(content)
	  return false if content.nil?
    content_chars = content.downcase.chars
    emblum_chars = self.emblum.downcase.chars
    emblum_chars.each do |ec|
      if emblum_chars.count(ec) > content_chars.count(ec)
        return false
      end
    end
    return true
	  #content.length >= (content.downcase.chars - self.emblum.downcase.chars).length + self.emblum.length
	end
end 