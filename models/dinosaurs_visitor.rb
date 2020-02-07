class DinosaursVisitor < ActiveRecord::Base
  belongs_to :dinosaur
  belongs_to :visitor
end
