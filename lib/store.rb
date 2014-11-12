class Store < ActiveRecord::Base

  has_many :employees

  validates :first_name, presence: true
  validates :last_name#, numericality: { greater_than_or_equal_to: 3 }
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0 }
  validate :must_carry_one_sex

  def must_carry_one_sex
    if !mens_apparel.present? && !womens_apparel.present?
      errors.add(:clothes_type_error, "Must carry Mens and / or Womens Wear")
    end
  end

end
