As a user, I want to be able to register to Jurassic Park.
    -Make a new visitor("Soundarya, 30, 5.7)
    -CREATE : self.insert_data

As a user, I want to change my name.
    -Update visitor instance : Need to know current id and the name to change to
    -UPDATE (id, name)
    -need an update method for each column

As a user, I want to be able to leave the park.
    -DELETE instance from Visitor class
    -need to know the id

As a user I want to be able to add a dino to the park.
    -CREATE instance in Dinosaur class

As a user, I want to be able to change the height of a dino.

As a user, I want to remove a dino form the park.

As a user, I want to be able to eat food.
    -Visitor -> find visitor object we want (READ with self.select)
    -Foods -> find food object we want (READ with self.select)
    -Foods_visitor(visitor_id, food_id) (CREATE new entry as FoodsVisiter.new(visitor_id, food_id))

As a user, I want to be able to visit and see a dinosaur.
    -Dinosaurs
    -Visitor
    -DinosaursVisitor
    -DinosaursVisitor.new(visitor_id, dinosaur_id)