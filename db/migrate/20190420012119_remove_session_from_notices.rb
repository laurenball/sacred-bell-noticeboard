class RemoveSessionFromNotices < ActiveRecord::Migration[5.2]
  def change
    remove_column :notices, :sessions
  end
end
