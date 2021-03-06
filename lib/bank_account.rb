class BankAccount

  attr_reader :name
  attr_accessor :status, :balance


  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end

  def deposit(amount)
    @balance = @balance + amount
  end

  def display_balance
    "Your Balance is $#{balance}."
  end

  def close_account
    self.status = "closed"
  end

  def valid?
    status == "open" && balance > 0
  end


end