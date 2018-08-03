json.transactions do
  json.array! @user.transactions.each do |transaction|
    json.extract! transaction, :id, :completed, :post
  end
end
