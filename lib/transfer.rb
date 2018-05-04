class Transfer

attr_accessor :name, :sender, :receiver, :status, :amount, :balance

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
  if @status == "pending" && valid?
  @receiver.balance += @amount
  @sender.balance -= @amount
  @status = "complete"
  else
    "Transaction rejected. Please check your account balance."
end
end

def reverse_transfer

end

end
