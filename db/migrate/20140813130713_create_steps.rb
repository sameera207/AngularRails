class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.string :name
      t.integer :recipe_id
      t.timestamps
    end
  end
end
