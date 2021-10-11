class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, presence: true, numericality: {
    only_integer: true,
    more_than_or_equal_to: 40,
    less_than_or_equal_to: 200
  }
  validates :store, presence: true
  before_create :generate_password

  private
  def generate_password
    chars = [*"a".."z", *"A".."Z", *"0".."9"]
    self.password = Array.new(8) { chars.sample }.join
  end
  
end
