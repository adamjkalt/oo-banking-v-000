class Transfer

attr_accessor :name, :transfer, :sender, :receiver, :status, :amount

def initialize(name, transfer, sender, receiver)
  @name = name
  @transfer = transfer
  @sender = sender
  @receiver = receiver
  @status = "pending"
  @amount = amount
end

end
