require 'pry'
class BankAccount

  attr_accessor :balance, :status
  attr_reader :name

  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end

  def deposit(money)
    self.balance = self.balance + money
  end

  def display_balance
    "Your balance is $#{balance}."
  end

  def valid?
    if self.status == "open" && self.balance > 0
      true
    else
      false
    end
  end

  def close_account
    self.status = "closed"
  end

end
