class AddMomentumToBrands < ActiveRecord::Migration
  def change
    add_column :brands, :momentum, :integer
  end
end
