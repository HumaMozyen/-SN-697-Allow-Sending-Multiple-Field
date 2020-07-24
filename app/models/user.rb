class User < ActiveRecord::Base
  has_many :packages
  # ...
  def company?
    false
  end
end