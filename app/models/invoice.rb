class Invoice < Sequel::Model
  def calculate_comission
    employee.calculate_comission(self.total)
  end

  def employee
    @employee ||= Employee.find(id: self.employee_id)
  end
end
