require_relative '../book.rb'

describe Account do
  it 'creates a bank account for a customer' do
    charlie = Account.new("Charlie")
    expect(charlie.name).to eq("Charlie")
  end
  it 'creates a bank account for a customer' do
    charlie = Account.new("Charlie")
      expect(charlie.money).to eq(0)
  end
  it 'creates a bank account for a customer' do
    charlie = Account.new("Charlie")
      expect(charlie.account_number).to be < 100_000
  end
end