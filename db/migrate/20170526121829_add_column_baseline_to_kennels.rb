class AddColumnBaselineToKennels < ActiveRecord::Migration[5.0]
  def change
    add_column :kennels, :baseline, :string
  end
end
