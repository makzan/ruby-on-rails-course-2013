class AddSalaryToJob < ActiveRecord::Migration
  def change
    add_column :jobs, :salary, :integer, default: 0
  end
end
