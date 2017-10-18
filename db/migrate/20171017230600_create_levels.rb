class CreateLevels < ActiveRecord::Migration[5.1]
  def change
    create_table :levels do |t|
      t.string :name
      t.string :tipo
      t.string :image
      t.text :content
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
