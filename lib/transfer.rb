class Transfer

attr_accessor :name, :transfer, :sender, :receiver, :status, :amount

def initialize(transfer, sender, receiver)
  @transfer = transfer
  @sender = sender
  @receiver = receiver
  @status = "pending"
  @amount = amount
end

end
