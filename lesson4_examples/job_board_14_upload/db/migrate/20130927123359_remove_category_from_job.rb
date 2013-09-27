class RemoveCategoryFromJob < ActiveRecord::Migration
  def up
    remove_column :jobs, :category
  end

  def down
    add_column :jobs, :category, :string
  end
end
