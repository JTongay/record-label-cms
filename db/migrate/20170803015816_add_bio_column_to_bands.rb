class AddBioColumnToBands < ActiveRecord::Migration[5.0]
  def change
    add_column :bands, :bio, :text
  end
end
