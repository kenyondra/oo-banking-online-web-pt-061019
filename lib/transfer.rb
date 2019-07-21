class Transfer
  attr_accessor :sender, :receiver, :amount, :status, :count
  
  def initialize(sender, reciever, amount)
    @sender = sender 
    @reciever = reciever
    @amount = amount
    @status = "pending"
  end
  
  def both_valid?
end
