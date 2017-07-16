class CreateBands < ActiveRecord::Migration[5.0]
  def change
    create_table :bands do |t|
      t.string :band_name
      t.string :city
      t.string :state
      t.string :start_date
      t.timestamps
    end
  end
end
