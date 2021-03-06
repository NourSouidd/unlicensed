class Booking < ApplicationRecord
  belongs_to :service
  belongs_to :user
  has_many :reviews, dependent: :destroy

  validates :start, presence: true
  validates :end, presence: true
  # validates :completed, inclusion: { in: [true, false] }
  validates :message, presence: true

  def accepted!
    self.status = 'Accepted'
  end

  def declined!
    self.status = 'Declined'
  end

  def completed!
    self.completed = true
  end
end
