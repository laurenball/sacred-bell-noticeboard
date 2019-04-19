class CreateSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :sessions do |t|
      t.integer :notice_id
      t.date :session_date
      t.time :session_time
      t.string :session_location
  
      t.timestamps
    end
  end
end
