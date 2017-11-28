require_relative 'account'

class Bank

  def deposit(account, amount)
    account.deposit(amount)
    account.record_transaction(amount, nil)
  end

  def withdraw(account, amount)
    account.withdraw(amount)
  end

end
