class AddValidTillToJob < ActiveRecord::Migration
  def change
    add_column :jobs, :valid_till, :date, default: 10.years.from_now
  end
end
