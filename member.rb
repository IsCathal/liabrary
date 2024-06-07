class Member 
  attr_reader :account_number, :name
  
  def initialize(name)
    @name = name
    @account_number = generate_account_number
  end

  private

  def generate_account_number
    rand(10_000..99_999)
  end
end
