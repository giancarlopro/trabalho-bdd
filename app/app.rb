require_relative 'config'

require_relative 'models/connection'

require_relative 'models/model'
require_relative 'models/invoice'
require_relative 'models/employee'
require_relative 'models/comission'

require_relative 'services/generate_comissions'

require 'byebug' if ENV['RACK_ENV'] == 'test'
require 'sinatra'

class MyApp < Sinatra::Base
  get '/employee/:id/comissions' do
    @employee = Employee.find(id: params[:id].to_i)

    if @employee.nil?
      @comissions = []
    else
      invoices = Invoice.where(employee_id: @employee&.id).all
      @comissions = GenerateComissions.call(invoices)
    end

    erb :comissions
  end
end
