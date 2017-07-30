class AddLastNameColumnInMusicians < ActiveRecord::Migration[5.0]
  def change
    add_column :musicians, :last_name, :string
  end
end
