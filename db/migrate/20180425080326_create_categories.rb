class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :starters
      t.string :main_courses
      t.string :desserts

      t.timestamps
    end
  end
end
