require "spec_helper"

describe ShortsController do
  describe "routing" do


    it "routes to #new" do
      get("/new").should route_to("shorts#new")
    end

    it "routes to #show" do
      get("/show/1").should route_to("shorts#show", :id => "1")
    end


    it "routes to #create" do
      post("/").should route_to("shorts#create")
    end

  end
end
