require 'byebug'

Dado('que eu acesse a página de consulta de comissões utilizando um id inexistente') do
  visit '/employee/10000/comissions'
end

Então('a página deve apresentar {string}') do |message|
  page.first('p.message').text.should == message
end

Dado('que exista um empregado com id {int} e taxa de comissão de {float}') do |id, comission_rate|
  Employee.insert(id: id, comission_rate: comission_rate)
end

Dado('que eu acesse a página de comissões utilizando o id {int}') do |id|
  visit "/employee/#{id}/comissions"
end

Dado('que o empregado com id {int} possua notas fiscais com os valores {string}') do |id, valores|
  employee = Employee.find(id: id)

  valores.split(',').each do |valor|
    Invoice.create(employee_id: employee.id, total: valor.to_f)
  end
end

Então('a página deve apresentar as comissões {string}') do |valores|
  valores.split(',').each_with_index do |valor, i|
    page.first("li#comission_#{i}").text.should have_content(valor.to_f.to_s)
  end
end
