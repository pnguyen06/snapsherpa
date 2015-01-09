class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string :name
      t.string :username
      t.text :description
      t.string :website
      t.string :facebook
      t.string :twitter
      t.string :instagram

      t.timestamps
    end
  end
end
