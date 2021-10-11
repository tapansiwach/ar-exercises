class Store < ActiveRecord::Base
  has_many :employees
  validates :name, presence: true, length: {minimum: 3}
  validates :annual_revenue, presence: true, numericality: {more_than_or_equal_to: 0}
  validate :store_has_to_sell_something

  def store_has_to_sell_something
    if !mens_apparel && !womens_apparel
      errors.add("Store has to sell something")
    end
  end
  
end
