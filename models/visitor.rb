class Visitor < ActiveRecord::Base
  has_many :dinosaurs_visitors
  has_many :dinosaurs, through: :dinosaurs_visitors
end

# ALL THE SQLITE3 PREREQUISITE DEFINITIONS!!
# NOW THIS IS ALL AUTOMATICALLY GIVEN TO US THRU ACTIVE_RECORD

#class Visitor
#   attr_accessor :name, :age, :height
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
#     visitors = DB.execute("SELECT * FROM visitors")
#     visitors.map { |visitor| Visitor.new(visitor) }
#   end

#   #READ (select * from with parameter)
#   def self.select(id)
#     sql = "SELECT * FROM visitors WHERE id=?"
#     visitor = DB.execute(sql, id)
#     Visitor.new(visitor[id])
#   end

#   #CREATE (create table)

#   #CREATE (insert new data into row)
#   def self.insert_data(name, age, height)
#     sql = "INSERT INTO visitors(name, age, height) VALUES (?,?,?)"
#     DB.execute(sql, name, age, height)
#     last_rowid = "SELECT last_insert_rowid() AS last_row FROM visitors"
#     row = DB.execute(last_rowid)
#     Visitor.new(row[0]['last_row'])
#   end

#   #UPDATE (update specific column)

#   #UPDATE (update specific data)
#   def update_name(name)
#     sql = "UPDATE visitors SET name= ? WHERE id = ?"
#     DB.execute(sql, name, self.id)
#   end

#   #DELETE (drop a table)

#   #DELETE (delete specific rows)
#   def delete_visitor
#     sql = "DELETE FROM visitors WHERE id =?"
#     DB.execute(sql, self.id)
#   end
# end
