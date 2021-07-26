RSpec.describe Employee do
  describe '#calculate_comission' do
    it 'calculates the comission on given value' do
      employee_id = Employee.insert(name: 'Roger', comission_rate: 0.15)
      employee = Employee.find(id: employee_id)
      expect(employee.calculate_comission(1000)).to eq(150)
    end
  end
end
