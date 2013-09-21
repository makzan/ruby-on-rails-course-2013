class AddCategoryToJob < ActiveRecord::Migration
  def change
    add_column :jobs, :category, :string, default: "ruby"
  end
end
