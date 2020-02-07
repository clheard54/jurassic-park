require_relative "./config/environment.rb"

Dinosaur.create_table
Visitor.create_table
DinosaursVisitor.create_table
Food.create_table
FoodsVisitor.create_table

#CREATE --> Creating new tables modifies schema
DB.execute("CREATE TABLE dinosaurs(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, age INTEGER, height INTEGER)")
DB.execute("CREATE TABLE visitors(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, age INTEGER, height INTEGER)")
DB.execute("CREATE TABLE dinosaurs_visitors(id INTEGER PRIMARY KEY AUTOINCREMENT, dinosaur_id INTEGER, vistor_id INTEGER)")
DB.execute("CREATE TABLE foods(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT)")
DB.execute("CREATE TABLE visitors_foods (id INTEGER PRIMARY KEY AUTOINCREMENT, visitor_id INTEGER, food_id INTEGER)")

10.times do
  # Visitor.new(Faker::FunnyName.name, Random.rand(100), Random.(6.0))
  visitor.insert_data(Faker::FunnyName.name, Random.rand(100), Random.(6.0))
end

dinos = ["Tyrannosaurus Rex",
         "Triceratops",
         "Stegosaurus",
         "Spinosaurus",
         "Archaeopteryx",
         "Velociraptor",
         "Allosaurus",
         "Brachiosaurus",
         "Apatosaurus",
         "Dilophosaurus"]

dinos.each do |dino_name|
  sql = "INSERT INTO dinosaurs(name, age, height) VALUES (?,?,?)"
  DB.execute(sql, dino_name, Random.rand(10000000), Random.rand(100.00))
  # Dinosaur.new(Faker::FunnyName.name, Random.rand(10000000), Random.(100.00)))
end

foods = ["hot dog", "cotton_candy", "burgers", "fries", "fried chicken"]

foods.each do |food_name|
  sql = "INSERT INTO foods(name) VALUES (?)"
  DB.execute(sql, food_name)
  #   Food.new(food_name)
end

binding.pry
