class CreateMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :members do |t|
      t.string :member_name
      t.string :password_digest
      t.timestamps
    end
  end
end
