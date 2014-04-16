class AddValorDoJuros < ActiveRecord::Migration
  def change
  	add_column :debts, :valordojuros, :decimal, :precision => 8, :scale => 2
  	add_column :debts, :valorapagardia, :decimal, :precision => 8, :scale => 2
  end
end
