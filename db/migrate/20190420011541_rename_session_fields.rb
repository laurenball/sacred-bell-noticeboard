class RenameSessionFields < ActiveRecord::Migration[5.2]
  def change
    rename_column :sessions, :session_date, :date
    rename_column :sessions, :session_time, :time
    rename_column :sessions, :session_location, :location
  end
end
