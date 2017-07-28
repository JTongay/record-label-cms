class CreateJoinTableBandGenre < ActiveRecord::Migration[5.0]
  def change
    create_join_table :bands, :genres do |t|
      t.index [:band_id, :genre_id]
      # t.index [:song_id, :album_id]
    end
  end
end
