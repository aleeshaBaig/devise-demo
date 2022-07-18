json.extract! invoice, :id, :date, :amount, :company, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
