class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :name
      t.text :content
      t.string :image
      t.string :tipo

      t.timestamps
    end
  end
end
