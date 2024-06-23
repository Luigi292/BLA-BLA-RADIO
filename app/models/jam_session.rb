class JamSession < ApplicationRecord
  # Associations
  belongs_to :creator, class_name: 'User', foreign_key: 'creator_id'
  has_many :jam_session_participants, dependent: :destroy
  has_many :participants, through: :jam_session_participants, source: :participant

  # Validations
  validates :location, presence: true
  validates :musical_genre, presence: true
  validates :instruments_available, presence: true  # Corrected attribute name
  validates :participants_needed, numericality: { greater_than_or_equal_to: 0 }
  validates :creator_id, presence: true

  # Methods
  def available_space?
    participants.count < participants_needed
  end
end
