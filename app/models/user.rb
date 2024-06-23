class User < ApplicationRecord
  # Devise modules
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Associations
  has_many :created_jam_sessions, class_name: 'JamSession', foreign_key: 'creator_id', dependent: :destroy
  has_many :applied_jam_sessions, class_name: 'JamSessionParticipant', foreign_key: 'participant_id', dependent: :destroy
  has_many :jam_sessions, foreign_key: 'creator_id', dependent: :destroy
end
