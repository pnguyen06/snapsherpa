class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :title
      t.text :description
      t.string :url
      t.date :date
      t.string :author
      t.string :source

      t.timestamps
    end
  end
end
