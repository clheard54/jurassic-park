class CreateTableFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
      t.string :name
    end
  end
end
