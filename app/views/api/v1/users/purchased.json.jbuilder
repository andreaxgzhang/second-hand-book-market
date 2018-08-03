json.transactions do
  json.array! @transactions.each do |transaction|
    json.extract! transaction, :id, :completed, :post
  end
end
