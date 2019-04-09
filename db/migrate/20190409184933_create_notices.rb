class CreateNotices < ActiveRecord::Migration[5.2]
  def change
    create_table :notices do |t|
      t.string :title
      t.integer :sessions
      t.integer :openings
      t.string :author
      t.string :notes
      t.string :reward
      t.string :requester

      t.timestamps
    end
  end
end
