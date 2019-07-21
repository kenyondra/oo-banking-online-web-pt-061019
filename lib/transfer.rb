class Transfer
  attr_accessor :sender, :receiver, :amount, :status, :count
  
  def initialize(sender, reciever, amount)
    @sender = sender 
    @reciever = reciever
    @amount = amount
    @status = "pending"
  end
  
  def both_valid?
    if sender.valid? && reciever.valid?
      true
    else
      false 
    end
  end
  
  def execute_transaction
    if @sender.balance < @amount
      @status = "rejected"
      return "Transaction rejected. Please check your account balance."
      
    elsif @status == "complete"
      puts "Transaction was already executed."
      
end
