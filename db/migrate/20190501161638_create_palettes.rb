class CreatePalettes < ActiveRecord::Migration[5.2]
  def change
    create_table :palettes do |t|
      t.string :name
      t.references :color, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
