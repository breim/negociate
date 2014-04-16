class CompaniesCollector < ActiveRecord::Migration
  def change
  	add_column :companies, :collector_id, :integer
  end
end
