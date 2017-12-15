Admin.create_with(password: '123456').find_or_create_by!(email: 'filipe@gmail.com')
#User.create_with(password: '123456').find_or_create_by!(email: 'filipekuhn@gmail.com', name:'Filipe User' )


require 'faker'


[Visitor, Picture, Property, User].each

public

def randomProperty
  Property.create!(
    title:         Faker::Name.title,
    description:   Faker::Hipster.sentence,
    address:       Faker::Simpsons.location,
    price:         Faker::Number.decimal(2),
    flag:          "Alugar",
    user_id:       1
  )
end


def randomPicture(picture)
  Picture.create!(
    image_file_name: Faker::Name.title,
    property_id:     property.id
  )
end


def randomUser(i)
  User.create!(
    first_name:            Faker::Name.first_name,
    email:                 "user#{i}@user.com",
    password:              "123456",
    password_confirmation: "123456"
  )
end

def randomVisitor(i)
  Visitor.create!(
    name:            Faker::Simpsons.character,
    email:                 "visitor#{i}@visitor.com",
    password:              "123456",
    password_confirmation: "123456"
  )
end

def generatePropertiesData
  (1..20).each do |i|
    property = self.randomProperty
  end
end

def generateUsers
  (1..10).each do |i|
    randomUser(i)
  end
end

def generateVisitors
  (1..20).each do |i|
    randomVisitor(i)
  end
end

self.generatePropertiesData
self.generateVisitors
