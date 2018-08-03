json.transactions do
  json.array! @transactions.each do |tac|
    json.extract! tac, :id, :completed
    json.post tac.post, :id, :title, :description, :photo, :price, :user
    json.created_at tac.created_at.strftime("%A, %b, %d")
    json.user tac.user, :id, :name, :email, :wechat_id, :gender
    # json.id tac.id
    # json.creatd_at tac.created_at.strftime("%A, %b, %d")
  end
end
