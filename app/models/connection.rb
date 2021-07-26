require 'sequel'

DB = Sequel.sqlite(Config.database_path)
