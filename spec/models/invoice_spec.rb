class FakeEmployee
  def calculate_comission(value)
    value * 0.1
  end
end

RSpec.describe Invoice do
  it_behaves_like 'a model'

  describe '#calculate_comission' do
    it 'calculates the comission' do
      employee = FakeEmployee.new
      invoice = Invoice.create(total: 100, employee: employee)

      expect(invoice.calculate_comission).to eq(10)
    end
  end
end
