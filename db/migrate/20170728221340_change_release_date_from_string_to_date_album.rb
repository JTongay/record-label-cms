class ChangeReleaseDateFromStringToDateAlbum < ActiveRecord::Migration[5.0]
  def change
    change_column :albums, :release_date, 'date USING release_date::date'
  end
end
