class CreateMusicians < ActiveRecord::Migration[5.0]
  def change
    create_table :musicians do |t|
      t.string :first_name
      t.string :last_name
      t.string :twitter_name
      t.timestamps
    end
  end
end
