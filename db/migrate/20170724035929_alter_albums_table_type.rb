class AlterAlbumsTableType < ActiveRecord::Migration[5.0]
  def change
    rename_column :albums, :type, :album_type
  end
end
