class RemoveCreatorIdFromJamSessions < ActiveRecord::Migration[7.1]
  def change
    remove_column :jam_sessions, :creator_id, :integer
  end
end
