require "spec_helper"

describe ShortsController do
  describe "routing" do

    it "routes to #index" do
      get("/shorts").should route_to("shorts#index")
    end

    it "routes to #new" do
      get("/shorts/new").should route_to("shorts#new")
    end

    it "routes to #show" do
      get("/shorts/1").should route_to("shorts#show", :id => "1")
    end

    it "routes to #edit" do
      get("/shorts/1/edit").should route_to("shorts#edit", :id => "1")
    end

    it "routes to #create" do
      post("/shorts").should route_to("shorts#create")
    end

    it "routes to #update" do
      put("/shorts/1").should route_to("shorts#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/shorts/1").should route_to("shorts#destroy", :id => "1")
    end

  end
end
