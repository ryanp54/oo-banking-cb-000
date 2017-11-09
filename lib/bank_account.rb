class BankAccount
  attr_accessor :name, :balance, :status

  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end
  def deposit(amount)
    self.balance += amount.to_f
  end
  def display_balance
    "Balance: #{self.balance}"
  end
  def valid?
    self.balance > 0 && self.status == "open"
  end
  def close_account
    self.status = "closed"
    self.balance = 0
  end
end
