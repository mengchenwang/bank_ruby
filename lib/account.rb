class Account
  DEFAULT_OPENNING_BALANCE = 0

  attr_reader :balance, :transactions

  def initialize
    @balance = DEFAULT_OPENNING_BALANCE
    @transactions = []
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end

  def record_transaction(credit, debit)
    date = Time.now.strftime("%d/%m/%Y")
    @transactions << { date: date, credit: credit, debit: debit, balance: @balance }
  end

  def balance_too_low?(amount)
    @balance - amount < 0
  end
end
