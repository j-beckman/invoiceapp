class AddPaidToInvoice < ActiveRecord::Migration
  def change
  	add_column :invoices, :paid, :boolean, :default => false
  end
end