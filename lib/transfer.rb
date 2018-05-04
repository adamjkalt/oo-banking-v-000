class Transfer

attr_accessor :name, :sender, :receiver, :status, :amount

def initialize(sender, receiver, amount)
  @sender = sender
  @receiver = receiver
  @amount = amount
  @status = "pending"
end

def valid?
  #if sender is "open" and transfer amount is <= balance AND receiver is "open"
  if @sender.valid? && @amount <= @sender.balance && @receiver.valid?
    true
  else
    false
  end
end

def execute_transaction
end

def reverse_transfer
end

end
