json.transactions do
  json.array! @transactions, :id, :completed, :post
end

json.posts do
  json.array! @posts
end
