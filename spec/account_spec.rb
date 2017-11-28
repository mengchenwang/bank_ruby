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
end
