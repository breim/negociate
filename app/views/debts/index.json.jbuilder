json.array!(@debts) do |debt|
  json.extract! debt, :id, :valor, :percentual, :total, :prazo, :company_id, :collector_id
  json.url debt_url(debt, format: :json)
end
