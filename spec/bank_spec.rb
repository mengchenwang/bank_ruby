require 'bank'

describe Bank do
  subject(:bank) { Bank.new }

  let(:account) { double(:account) }

  before do
    allow(account).to receive(:deposit)
    allow(account).to receive(:withdraw)
    allow(account).to receive(:record_transaction)
  end

  describe '#deposit' do
    it 'calls the deposit method in account' do
      expect(account).to receive(:deposit).with(100)
      bank.deposit(account, 100)
    end

    it 'calls the record_transaction method in account' do
      expect(account).to receive(:record_transaction).with(100, nil)
      bank.deposit(account, 100)
    end
  end

  describe '#withdraw' do
    it 'calls the withdraw method in account' do
      expect(account).to receive(:withdraw).with(100)
      bank.withdraw(account, 100)
    end

    it 'calls the record_transaction method in account' do
      expect(account).to receive(:record_transaction).with(nil, 100)
      bank.withdraw(account, 100)
    end
  end

  describe '#print_statement' do
    it 'print the statement to command line' do
      allow(account).to receive(:transactions).and_return([{ date: "01/01/2018", credit: nil, debit: 100, balance: 100 }])
      formated_statement = "Date || Credit || Debit || Balance\n" +
                           "01/01/2018 ||  || 100 || 100\n"
      expect { bank.print_statement(account) }.to output(formated_statement).to_stdout
    end
  end

end
