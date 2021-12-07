puts "Deleting old data..."
Audition.destroy_all
Role.destroy_all

puts "Creating roles..."
role1 = Role.create(character_name: "Superman")
role2 = Role.create(character_name: "Ironman")
role3 = Role.create(character_name: "Spiderman")

puts "Creating Auditions..."
audition1 = Audition.create(
    actor: "Tom Hanks", 
    location: "Hollywood", 
    phone: 703-574-3748,
    hired: true,
    role_id: role1.id
)
audition2 = Audition.create(
    actor: "Obama", 
    location: "Washington D.C.", 
    phone: 703-473-5893,
    hired: false,
    role_id: role2.id
)
audition3 = Audition.create(
    actor: "Ryan Reynolds", 
    location: "Seattle", 
    phone: 738-839-3749,
    hired: true,
    role_id: role3.id
)
audition4 = Audition.create(
    actor: "Chris", 
    location: "Seattle", 
    phone: 738-839-3749,
    hired: true,
    role_id: role1.id
)


puts "Done seeding!"