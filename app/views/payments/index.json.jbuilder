json.array!(@payments) do |payment|
  json.extract! payment, :id, :total, :collector_id, :company_id, :debt_id
  json.url payment_url(payment, format: :json)
end
