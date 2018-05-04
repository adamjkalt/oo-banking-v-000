class Transfer

attr_accessor :name, :sender, :receiver, :status, :amount

def initialize(sender, receiver, amount)
  @sender = sender
  @receiver = receiver
  @amount = amount
  @status = "pending"
end

def valid?
  @sender.valid? && @amount <= @sender.balance && @receiver.valid?
end

def execute_transaction
  @receiver.balance << @amount
end

def reverse_transfer
end

end
