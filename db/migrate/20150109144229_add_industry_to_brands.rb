class AddIndustryToBrands < ActiveRecord::Migration
  def change
    add_column :brands, :industry, :string
  end
end
