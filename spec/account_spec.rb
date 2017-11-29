require 'account'

describe Account do
  subject(:account) { Account.new }

  describe '#initialize' do
    it 'sets the openning balance to 0' do
      expect(account.balance).to eq 0
    end
  end

  describe '#deposit' do
    it 'increase the balance by 100' do
      expect { account.deposit(100) }.to change { account.balance }.by(100)
    end
  end

  describe '#withdraw' do
    it 'decrease the balance by 100' do
      expect { account.withdraw(100) }.to change { account.balance }.by(-100)
    end
  end

  describe '#record_transaction' do
    it 'add [date, 100, nil, 100] to transactions' do
      record = [{ date: Time.now.strftime("%d/%m/%Y"), credit: 100, debit: nil, balance: 0 }]
      expect { account.record_transaction(100, nil) }.to change { account.transactions }.to(record)
    end
  end

  describe '#balance_too_low?' do
    it 'returns true when balance goes into negative' do
      expect(account.balance_too_low?(100)).to eq true
    end
  end
end
