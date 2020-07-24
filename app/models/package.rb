class Package < ActiveRecord::Base
  belongs_to :owner, polymorphic: true
  def company_owned?
    owner.company?
  end
end