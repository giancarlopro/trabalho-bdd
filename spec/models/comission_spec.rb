RSpec.describe Comission do
  describe '#employee' do
    it 'returns employee' do
      employee_id = Employee.insert(name: 'Roger', comission_rate: 0.1)
      comission_id = Comission.insert(
        value: 10,
        invoice_id: 1,
        employee_id: employee_id
      )

      comission = Comission.find(id: comission_id)

      expect(comission.employee).to eq(Employee.find(id: employee_id))
    end
  end

  describe '#invoice' do
    it 'should return invoice' do
      invoice_id = Invoice.insert(total: 100, employee_id: 1)
      comission_id = Comission.insert(
        value: 10,
        invoice_id: invoice_id,
        employee_id: 1
      )

      comission = Comission.find(id: comission_id)

      expect(comission.invoice).to eq(Invoice.find(id: invoice_id))
    end
  end
end
