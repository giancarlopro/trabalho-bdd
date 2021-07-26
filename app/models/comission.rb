class Comission < Sequel::Model
  def employee
    @employee ||= Employee.find(id: self.employee_id)
  end

  def invoice
    @invoice ||= Invoice.find(id: self.invoice_id)
  end
end
