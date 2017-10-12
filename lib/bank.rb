class Bank
  def initialize(statement_printer = StatementPrinter.new)
    @balance = 0
    @deposits = []
    @statement_printer = statement_printer
  end

  def deposit(amount)
    @balance += amount
    @deposits.push(amount)
  end

  def balance
    @balance
  end

  def print_statement
    @statement_printer.print(@deposits)
  end
end
