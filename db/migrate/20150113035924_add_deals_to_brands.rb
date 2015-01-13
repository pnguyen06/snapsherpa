class AddDealsToBrands < ActiveRecord::Migration
  def change
    add_column :brands, :deals, :boolean
  end
end
