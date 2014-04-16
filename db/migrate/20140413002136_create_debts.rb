class CreateDebts < ActiveRecord::Migration
  def change
    create_table :debts do |t|
      t.decimal :valor, :precision => 8, :scale => 2
      t.decimal :percentual, :precision => 8, :scale => 2
      t.decimal :total,:precision => 8, :scale => 2
      t.string :prazo
      t.integer :company_id
      t.integer :collector_id

      t.timestamps
    end
  end
end
