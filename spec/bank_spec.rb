require 'bank'

describe Bank do
  subject(:bank) { Bank.new }

  let(:account) { double(:account) }

  before do
    allow(account).to receive(:deposit)
    allow(account).to receive(:withdraw)
  end

  describe '#deposit' do
    it 'calls the deposit method in account' do
      expect(account).to receive(:deposit).with(100)
      bank.deposit(account, 100)
    end
  end

  describe '#withdraw' do
    it 'calls the withdraw method in account' do
      expect(account).to receive(:withdraw).with(100)
      bank.withdraw(account, 100)
    end
  end
end
