class CreateTableDinosaursVisitors < ActiveRecord::Migration[5.2]
  def change
    create_table :dinosaurs_visitors do |t|
      t.integer :dinosaur_id
      t.integer :visitor_id
    end
  end
end
