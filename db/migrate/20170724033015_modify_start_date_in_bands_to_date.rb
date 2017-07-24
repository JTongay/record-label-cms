class ModifyStartDateInBandsToDate < ActiveRecord::Migration[5.0]
  def change
    change_column :bands, :start_date, 'date USING start_date::date'
  end
end
