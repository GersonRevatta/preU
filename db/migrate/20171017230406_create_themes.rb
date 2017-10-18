class CreateThemes < ActiveRecord::Migration[5.1]
  def change
    create_table :themes do |t|
      t.string :name
      t.string :image
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
