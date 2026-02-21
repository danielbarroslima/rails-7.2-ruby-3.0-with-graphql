# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


user = User.create!(name: "Daniel", email: "daniel@email.com")

permissao_1 = Permission.create!(name: "read")
permissao_2 = Permission.create!(name: "write")
permissao_3 = Permission.create!(name: "read_user")

user.permissions << permissao_1
user.permissions << permissao_2
user.permissions << permissao_3