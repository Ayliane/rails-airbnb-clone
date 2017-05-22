class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.datetime :start_date, null: false
      t.datetime :end_date, null: false
      t.boolean :confirmation_status, default: false
      t.references :user, foreign_key: true
      t.references :kennel, foreign_key: true

      t.timestamps
    end
  end
end
