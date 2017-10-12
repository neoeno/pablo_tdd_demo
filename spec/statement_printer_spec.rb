require_relative '../lib/statement_printer'

describe StatementPrinter do
  it "prints a statement" do
    statement_printer = StatementPrinter.new
    expect(statement_printer.print([5, 6])).to eq "5,6"
  end
end
