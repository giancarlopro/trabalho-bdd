RSpec.describe Invoice do
  describe '#calculate_comission' do
    it 'calculates the comission' do
      employee_id = Employee.insert(name: 'Roger', comission_rate: 0.1)
      invoice_id = Invoice.insert(total: 100, employee_id: employee_id)

      invoice = Invoice.find(id: invoice_id)

      expect(invoice.calculate_comission).to eq(10)
    end
  end

  describe '#employee' do
    it 'returns the employee' do
      employee_id = Employee.insert(name: 'Roger', comission_rate: 0.1)
      invoice_id = Invoice.insert(total: 100, employee_id: employee_id)

      invoice = Invoice.find(id: invoice_id)
      employee = Employee.find(id: employee_id)

      expect(invoice.employee).to eq(employee)
    end
  end
end
