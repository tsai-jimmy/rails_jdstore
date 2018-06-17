# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if User.find_by(email: "admin@test.com").nil?
  u = User.new
  u.email = "admin@test.com"           # 可以改成自己的 email

  u.password = "123456"                # 最少要六码

  u.password_confirmation = "123456"   # 最少要六码

  u.is_admin = true
  u.save
  puts "Admin 建立好，帳號為 #{u.email}，密碼為#{u.password}"
else
  puts "admin 已經建立過了，腳本跳過該步驟"

end
Product.create!(
  title: "Ruby on Rails",
  description: "ROR is Coming",
  price: 2222800,
  quantity: 10,
  image: open("https://kaochenlong.com/images/books/rails.jpg")
)
