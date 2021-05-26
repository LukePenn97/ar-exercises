class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: {minimum: 3}
  validates :annual_revenue, presence: true
  validates :mens_apparel, inclusion: [true, false]
  validates :womens_apparel, inclusion: [true, false]

  validate :annual_revenue_must_be_greater_than_0, :mens_or_womens_apparel_must_be_true, on: :create
  def annual_revenue_must_be_greater_than_0
    if annual_revenue && annual_revenue <= 0
      errors.add(:annual_revenue, "must be greater than 0")
    end
  end

  def mens_or_womens_apparel_must_be_true
    if (mens_apparel == false && womens_apparel == false)
      errors.add(:mens_apparel, "must be true or")
      errors.add(:womens_apparel, "must be true")
    end
  end
end
