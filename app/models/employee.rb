class Employee < Sequel::Model
  def calculate_comission(value)
    value * self.comission_rate
  end
end
