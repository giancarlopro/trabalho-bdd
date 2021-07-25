require_relative 'models/model'
require_relative 'models/invoice'
require_relative 'models/employee'
require_relative 'models/comission'

require_relative 'services/generate_comissions'

require 'sinatra'

class MyApp < Sinatra::Base
  get '/employee/:id/comissions' do
    @employee = Employee.find(id: params[:id].to_i)

    invoices = Invoice.where(employee: @employee)

    @comissions = GenerateComissions.call(invoices)

    erb :comissions
  end
end
