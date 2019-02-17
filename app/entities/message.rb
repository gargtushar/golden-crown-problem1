class Message
  attr_accessor :to, :from, :body

  def initialize(to, from, body = "")
    self.to = to 
    self.from =  from
    self.body = body
  end 
end