class Member 
  attr_reader :account_number, :name
  attr_accessor :money

  def initialize(name)
    @name = name
    @money = 0
    @account_number = generate_account_number
  end

  private

  def generate_account_number
    rand(10_000..99_999)
  end
end
