class CreateJamSessionParticipants < ActiveRecord::Migration[7.1]
  def change
    create_table :jam_session_participants do |t|
      t.references :jam_session, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
