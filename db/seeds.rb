puts "seeding"

r1 = Role.create(character_name: "Yoojin")
r2 = Role.create(character_name: "Rabah")
r3 = Role.create(character_name: "Gehrig")

Audition.create(actor:"a", location:"a", phone:1, hired:true, role_id:r1.id)
Audition.create(actor:"b", location:"b", phone:2, hired:false, role_id:r1.id)
Audition.create(actor:"c", location:"c", phone:3, hired:true, role_id:r2.id)
Audition.create(actor:"d", location:"d", phone:4, hired:true, role_id:r3.id)
Audition.create(actor:"e", location:"e", phone:5, hired:false, role_id:r2.id)
Audition.create(actor:"f", location:"f", phone:6, hired:false, role_id:r3.id)

# 20.times do
#     Role.create(
#         character_name: Faker::Name.name
#     )
# end

# randId = rand(1..Role.all.count)

# 40.times do
#     Audition.create(
#         actor: Faker::Audition.name,
#         location: Faker::Address.city,
#         phone: Faker::PhoneNumber.phone_number,
#         hired: Faker::Boolean.boolean,
#         role: randId
#     )
# end

puts "done seeding:)"