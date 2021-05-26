class Employee < ActiveRecord::Base
  belongs_to :store

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :store_id, presence: true

  validate :hourly_rate_must_be_between_40_and_200, on: :create

  def hourly_rate_must_be_between_40_and_200
    if hourly_rate > 200 || hourly_rate < 40
      errors.add(:hourly_rate, "must be between 40 and 200")
    end
  end
end
