require_relative 'account'

class Bank

  STATEMENT_HEADER = { date: "Date", credit: "Credit", debit: "Debit", balance: "Balance" }

  def deposit(account, amount)
    account.deposit(amount)
    account.record_transaction(amount, nil)
  end

  def withdraw(account, amount)
    raise "not enough balance" if account.balance_too_low?(amount)
    account.withdraw(amount)
    account.record_transaction(nil, amount)
  end

  def print_statement(account)
    statement = (account.transactions << STATEMENT_HEADER)
    statement.reverse.each do |transaction|
      puts "#{transaction[:date]} || #{transaction[:credit]} || " +
           "#{transaction[:debit]} || #{transaction[:balance]}"
    end
  end

  def print_balance(account)
    puts "#{account.balance}"
  end
end
