require_relative '../config'

require 'sequel'

DB = Sequel.sqlite(Config.database_path)

unless DB.table_exists?(:comissions)
  DB.create_table :comissions do
    primary_key :id
    column :value, Float
    column :employee_id, Integer
    column :invoice_id, Integer
  end
end

unless DB.table_exists?(:employees)
  DB.create_table :employees do
    primary_key :id
    column :name, String
    column :comission_rate, Float
  end
end

unless DB.table_exists?(:invoices)
  DB.create_table :invoices do
    primary_key :id
    column :total, Float
    column :employee_id, Float
  end
end
