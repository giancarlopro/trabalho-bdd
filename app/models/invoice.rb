class Invoice < Model
  attr_accessor :total, :employee

  def calculate_comission
    @employee.calculate_comission(@total)
  end
end
