class CreateShowings < ActiveRecord::Migration[5.0]
  def change
    create_table :showings do |t|

      t.datetime :time
      t.integer :available_seats
      t.references :movie, foreign_key: true
      t.references :auditorium, foreign_key: true

      t.timestamps
    end
  end
end