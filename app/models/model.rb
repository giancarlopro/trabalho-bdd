class Model
  attr_accessor :id

  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  class << self
    def instances
      @instances ||= {}
      @instances[self.class.name] ||= {}
    end

    def create(attributes = {})
      attributes[:id] ||= instances.keys.length + 1

      instances[attributes[:id]] = new(attributes)
    end

    def find(id)
      instances[id]
    end

    def where(attributes = {})
      instances.values.select do |instance|
        attributes.all? do |name, value|
          instance.send(name) == value
        end
      end
    end

    def find_by(attributes = {})
      where(attributes).first
    end
  end
end
