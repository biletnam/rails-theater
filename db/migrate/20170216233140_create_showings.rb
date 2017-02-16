class CreateShowings < ActiveRecord::Migration[5.0]
  def change
    create_table :showings do |t|

      t.timestamps
    end
  end
end
