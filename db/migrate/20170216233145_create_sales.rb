class CreateSales < ActiveRecord::Migration[5.0]
  def change
    create_table :sales do |t|

      t.string :customer_name
      t.string :customer_email
      t.references :showing, foreign_key: true

      t.timestamps
    end
  end
end
