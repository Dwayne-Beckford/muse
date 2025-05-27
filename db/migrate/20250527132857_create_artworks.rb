class CreateArtworks < ActiveRecord::Migration[7.1]
  def change
    create_table :artworks do |t|
      t.string :name
      t.text :description
      t.string :location
      t.float :price

      t.timestamps
    end
  end
end
