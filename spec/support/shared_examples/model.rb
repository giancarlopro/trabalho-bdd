RSpec.shared_examples 'a model' do
  describe '#initialize' do
    it 'should set the attributes' do
      model = described_class.new(id: 1)
      expect(model.id).to eq(1)
    end
  end

  describe '.create' do
    it 'should create a new model' do
      model = described_class.create(id: 1)
      expect(model.id).to eq(1)
    end

    describe 'when id is not given' do
      it 'should auto increment id' do
        model = described_class.create
        expect(model.id).to be > 0
      end
    end
  end

  describe '.find' do
    it 'should find a model' do
      model = described_class.create(id: 1)
      expect(described_class.find(1)).to eq(model)
    end
  end

  describe '.find_by' do
    it 'should find a model' do
      model = described_class.create(id: 1)
      expect(described_class.find_by(id: 1)).to eq(model)
    end
  end

  describe '.where' do
    it 'should find models matching attributes' do
      model1 = described_class.create(id: 1)
      model2 = described_class.create(id: 2)
      expect(described_class.where(id: 1)).to eq([model1])
    end
  end
end
