require "rspec/expectations"
require 'rails_helper'

describe "an error in after(:all)" do
  after(:all) do
    raise StandardError.new("Boom!")
  end

  it "passes this example" do
  end

  it "passes this example, too" do
  end
end