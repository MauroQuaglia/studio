class Transaction

  def initialize(account_a, account_b)
    @account_a = account_a
    @account_b = account_b
  end

  def transfer(amount)
    debit(@account_a, amount)
    credit(@account_b, amount)
  end

  def debit(account, amount)
    account.balance -= amount
  end

  def credit(account, amount)
    account.balance += amount
  end

  private :debit, :credit

end

class Transaction2

  def initialize(account_a, account_b)
    @account_a = account_a
    @account_b = account_b
  end

  def greater
    @account_a.greater_balance_then?(@account_b)
  end

end