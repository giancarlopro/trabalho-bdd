RSpec.describe Employee do
  it_behaves_like 'a model'

  describe '#calculate_comission' do
    it 'calculates the comission on given value' do
      employee = Employee.create(id: 1, name: 'Roger', comission_rate: 0.15)
      expect(employee.calculate_comission(1000)).to eq(150)
    end
  end
end
