class AddColumnToKennel < ActiveRecord::Migration[5.0]
  def change
    add_column :kennels, :city, :string, null: false
  end
end
