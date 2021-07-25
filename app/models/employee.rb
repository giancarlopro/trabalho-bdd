class Employee < Model
  attr_accessor :name, :comission_rate

  def calculate_comission(value)
    value * @comission_rate
  end
end
