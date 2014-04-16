class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.decimal :total, :precision => 8, :scale => 2
      t.integer :collector_id
      t.integer :company_id
      t.integer :debt_id

      t.timestamps
    end
  end
end
