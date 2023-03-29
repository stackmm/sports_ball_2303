class Player

  attr_reader :name, :monthly_cost, :contract_length, 
              :first_name, :last_name, :total_cost
  def initialize(name, monthly_cost, contract_length)
    @name = name
    @monthly_cost = monthly_cost
    @contract_length = contract_length
    @first_name = name.split(" ").first
    @last_name = name.split(" ").last
    @total_cost = monthly_cost * contract_length
  end
end