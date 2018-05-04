class Transfer

attr_accessor :name, :sender, :receiver, :status, :amount

def initialize(sender, receiver, amount)
  @sender = sender
  @receiver = receiver
  @amount = amount
  @status = "pending"
end

def valid?(bankaccount)
  if bankaccount.valid?
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
