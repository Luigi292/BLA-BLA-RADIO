
class AddCreatorIdToJamSessions < ActiveRecord::Migration[7.1]
  def change
    add_column :jam_sessions, :creator_id, :integer
    add_index :jam_sessions, :creator_id
  end
end
