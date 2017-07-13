class CreateBandsTable < ActiveRecord::Migration[5.0]
  def change
    create_table :bands_tables do |t|
      t.string :band_name
      t.string :location
      t.string :start_date
      
      t.timestamps
    end
  end
end
