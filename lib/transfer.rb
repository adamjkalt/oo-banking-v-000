class Transfer

attr_accessor :name, :sender, :receiver, :status, :amount

def initialize(amount, sender, receiver)
  @sender = sender
  @receiver = receiver
  @status = "pending"
  @amount = amount
end

end
