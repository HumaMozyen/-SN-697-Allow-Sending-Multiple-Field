class Company < ActiveRecord::Base
  has_many :packages
  def company?
    true
  end
end