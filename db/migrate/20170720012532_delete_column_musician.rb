class DeleteColumnMusician < ActiveRecord::Migration[5.0]
  def up
    remove_column :musicians, :last_name
  end
  def down
    add_column :musicians, :last_name, :string
  end
end
