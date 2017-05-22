class CreateKennels < ActiveRecord::Migration[5.0]
  def change
    create_table :kennels do |t|
      t.string :address, null: false
      t.text :description, null: false
      t.text :habits
      t.boolean :garden
      t.boolean :childs_around
      t.string :other_animal
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
