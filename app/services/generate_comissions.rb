class GenerateComissions
  class << self
    def call(invoices)
      comissions = []

      invoices.each do |invoice|
        comission_value = invoice.calculate_comission

        comissions << Comission.insert(
          value: comission_value,
          invoice_id: invoice.id,
          employee_id: invoice.employee.id,
        )
      end

      comissions.map { |id| Comission.find(id: id) }
    end
  end
end
