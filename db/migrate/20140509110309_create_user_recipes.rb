class CreateUserRecipes < ActiveRecord::Migration
  def change
    create_table :user_recipes do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
