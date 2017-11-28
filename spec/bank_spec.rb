require 'bank'

describe Bank do
  subject(:bank) { Bank.new }

  let(:account) { double(:account) }

  before do
    allow(account).to receive(:deposit)
  end

  describe '#deposit' do
    it 'calls the deposit method in account' do
      expect(account).to receive(:deposit).with(100)
      bank.deposit(account, 100)
    end
  end
end
