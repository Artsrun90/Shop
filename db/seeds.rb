# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# 20.times do
#     Customer.create(
#      customerName: Faker::Name.name,
#      contactName:  Faker::Name.name, 
#      address:  Faker::Address.street_address,
#      city: Faker::Address.city, 
#      postalCode: Faker::Address.postcode,
#      country: Faker::Address.country
#     )
# end
20.times do
    Category.create(
        categoryName: Faker::Food.dish,
        description:  Faker::Food.description, 
    )
end

# 20.times do
#         Employee.create(
#          lastName: Faker::Name.name,
#          firstName:  Faker::Name.name, 
#          birthDay:  Faker::Date.birthday(min_age: 18, max_age: 65),
#          photo: Faker::Avatar.image, 
#          notes: Faker::Food.description
#         )
#     end

        # 1.times do
        #     Customer.create(
        #         email: "superadmin@gmail",
        #         password:  "superadmin", 
        #         customerName: "superadmin",
        #         role: "admin"
            
        #     )
        # end

