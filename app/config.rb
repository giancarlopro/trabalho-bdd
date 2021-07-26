class Config
  class << self
    def database_path
      file = 'database.sqlite'
      file = 'database.test.sqlite' if ENV['RACK_ENV'] == 'test'

      File.join(File.dirname(__FILE__), 'db', file)
    end
  end
end
