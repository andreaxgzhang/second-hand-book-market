json.posts do
  json.array! @posts.each do |post|
    json.extract! post, :id, :title, :description, :photo, :price, :course_number, :confirmed, :professor, :user_id
    json.created_at post.created_at.strftime("%A, %b, %d")
  end
end
