require_relative '../lib/bank'

describe Bank do
  let(:bank) { described_class.new }

  it "deposits once" do
    bank.deposit(3000)
    expect(bank.balance).to eq 3000
  end

  it "deposits twice" do
    bank.deposit(3000)
    bank.deposit(5000)
    expect(bank.balance).to eq 8000
  end

  it "prints a statement" do
    printer = double :statement_printer
    allow(printer).to receive(:print).with([1000, 2000]).and_return("some string")

    bank = described_class.new(printer)
    bank.deposit(1000)
    bank.deposit(2000)

    expect(bank.print_statement).to eq "some string"
  end
end
