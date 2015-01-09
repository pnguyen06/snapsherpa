class AddHistoryToBrands < ActiveRecord::Migration
  def change
    add_column :brands, :history, :text
  end
end
