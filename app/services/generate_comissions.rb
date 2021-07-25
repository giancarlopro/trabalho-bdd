class GenerateComissions
  class << self
    def call(invoices)
      comissions = []

      invoices.each do |invoice|
        comission_value = invoice.calculate_comission

        comissions << Comission.create(
          value: comission_value,
          employee: invoice.employee,
          invoice: invoice
        )
      end

      comissions
    end
  end
end
