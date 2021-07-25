RSpec.describe GenerateComissions do
  describe '.call' do
    it 'generates employee comissions given his invoices' do
      employee = Employee.create(id: 1, name: 'John', comission_rate: 0.15)
      invoice = Invoice.create(id: 1, employee: employee, total: 100)

      comissions = GenerateComissions.call([invoice])

      expect(comissions.length).to eq(1)
      expect(comissions.first.value).to eq(15)
    end
  end
end
