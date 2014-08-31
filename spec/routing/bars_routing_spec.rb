require "rails_helper"

RSpec.describe BarsController, :type => :routing do
  describe "routing" do

#    it "routes to #show" do
#      expect(:get => "/bars/1").to route_to("bars#show", :id => "1")
#    end

    it "routes to #update" do
      expect(:put => "/bars/1").to route_to("bars#update", :id => "1")
    end
  end
end
