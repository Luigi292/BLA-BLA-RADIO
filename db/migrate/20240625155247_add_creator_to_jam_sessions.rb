class AddCreatorToJamSessions < ActiveRecord::Migration[7.1]
  def change
    add_foreign_key :jam_sessions, :users, column: :creator_id
  end
end
