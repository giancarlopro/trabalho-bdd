RSpec.describe GenerateComissions do
  describe '.call' do
    it 'generates employee comissions given his invoices' do
      employee_id = Employee.insert(name: 'John', comission_rate: 0.15)
      employee = Employee.find(id: employee_id)

      invoice_id = Invoice.insert(employee_id: employee_id, total: 100)
      invoice = Invoice.find(id: invoice_id)

      comissions = GenerateComissions.call([invoice])

      expect(comissions.length).to eq(1)
      expect(comissions.first.value).to eq(15)
    end
  end
end
