
# app/models/jam_session.rb

class JamSession < ApplicationRecord
  # Associations
  belongs_to :creator, class_name: 'User', foreign_key: 'creator_id'
  has_many :jam_session_participants, dependent: :destroy
  has_many :participants, through: :jam_session_participants, source: :user

  # Validations
  validates :location, presence: true
  validates :musical_genre, presence: true
  validates :instruments_available, presence: true
  validates :participants_needed, numericality: { greater_than_or_equal_to: 0 }
  validates :creator_id, presence: true

  # Define participants_needed as an attribute
  attribute :participants_needed, :integer
  attribute :musical_genre, :string
  attribute :instruments_available, :string

  # Methods
  def available_space?
    participants_count = participants.count
    participants_count.present? && participants_count < participants_needed
  end
end
