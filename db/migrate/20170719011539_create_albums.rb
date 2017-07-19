class CreateAlbums < ActiveRecord::Migration[5.0]
  def change
    create_table :albums do |t|
      t.string :title
      t.string :release_date
      t.string :type
      t.timestamps
    end
  end
end
