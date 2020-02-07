class Dinosaur < ActiveRecord::Base
  has_many :dinosaurs_visitors
  has_many :visitors, through: :dinosaurs_visitors
end

# ALL THE SQLITE3 PREREQUISITE DEFINITIONS!!
# NOW THIS IS ALL AUTOMATICALLY GIVEN TO US THRU ACTIVE_RECORD

#class Dinosaur
#   attr_accessor :name, :age, :height, :id
#   @@all = []

#   def initialize(input)
#     @name = input["name"]
#     @age = input["age"]
#     @height = input["height"]
#     @id = input["id"]
#     # @@all << self
#   end

#   def self.all
#     # @@all
#     dinos = DB.execute("SELECT * FROM dinosaurs")
#     dinos.map { |dino| Dinosaur.new(dino["name"], dino["age"], dino["height"]) }
#   end

#   def all_my_visitors
#     sql = "SELECT * FROM visitors INNER JOIN (SELECT visitor_id FROM dinosaurs_visitors WHERE dinosaur_id = ?) WHERE visitors.id = dinosaurs_visitors.visitor_id"
#     DB.execute(sql, self.id)
#   end

#   #READ (select * from with parameter)
#   def self.select(id)
#     sql = "SELECT * FROM dinosaurs WHERE id = ?"
#     dino = DB.execute(sql, id)
#     dino = Dinosaur.new(dino[0])
#   end

#   #CREATE (create table)
#   def self.create_table
#     sql = <<-SQL
#     "CREATE TABLE dinosaurs(
#       id INTEGER PRIMARY KEY AUTOINCREMENT,
#       name TEXT,
#       age INTEGER,
#       height INTEGER)"
#       SQL
#     DB.execute(sql)
#   end

#   #CREATE (insert new data into row)
#   #UPDATE (update specific column)
#   #UPDATE (update specific data)
#   #DELETE (drop a table)
#   #DELETE (delete specific rows)
# end
