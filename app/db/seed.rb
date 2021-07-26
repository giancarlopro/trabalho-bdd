require_relative '../app'

employee_id = Employee.insert(name: 'Giancarlo', comission_rate: 0.2)

Invoice.insert(employee_id: employee_id, total: 100)
Invoice.insert(employee_id: employee_id, total: 200)
Invoice.insert(employee_id: employee_id, total: 1_000)
Invoice.insert(employee_id: employee_id, total: 10_000)
