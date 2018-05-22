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
    puts "Your balance is $#{self.balance}."
  end
end
