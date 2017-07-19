class CreateJoinTableBandMusician < ActiveRecord::Migration[5.0]
  def change
    create_join_table :bands, :musicians do |t|
      t.index [:band_id, :musician_id]
      # t.index [:musician_id, :band_id]
    end
  end
end
