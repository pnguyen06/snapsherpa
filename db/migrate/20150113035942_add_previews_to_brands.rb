class AddPreviewsToBrands < ActiveRecord::Migration
  def change
    add_column :brands, :previews, :boolean
  end
end
