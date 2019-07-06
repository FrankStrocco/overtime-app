@user = User.create!(first_name: "Butt", last_name: "Munch", email: "butt@munch.com", password: "asdfasdf", password_confirmation: "asdfasdf")

puts "1 user created"
100.times do |post|
    Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id)
end

puts "100 Posts have been created"
