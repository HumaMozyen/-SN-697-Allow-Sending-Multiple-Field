require "rspec/expectations"
require 'rails_helper'

class Thing
  def widgets
    @widgets ||= []
  end
end

describe Thing do
  before(:all) do
    @thing = Thing.new
  end

  describe "initialized in before(:all)" do
    it "has 0 widgets" do
      @thing.should have(0).widgets
    end

    it "can get accept new widgets" do
      @thing.widgets << Object.new
      @thing.should have(1).widgets
    end

    it "shares state across examples" do
      @thing.should have(1).widgets
    end
  end
end