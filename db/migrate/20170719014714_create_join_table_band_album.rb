class CreateJoinTableBandAlbum < ActiveRecord::Migration[5.0]
  def change
    create_join_table :bands, :albums do |t|
      t.index [:band_id, :album_id]
    end
  end
end
