require "spec_helper"

describe XfilesController do
  describe "routing" do

    it "routes to #index" do
      get("/xfiles").should route_to("xfiles#index")
    end

    it "routes to #new" do
      get("/xfiles/new").should route_to("xfiles#new")
    end

    it "routes to #show" do
      get("/xfiles/1").should route_to("xfiles#show", :id => "1")
    end

    it "routes to #edit" do
      get("/xfiles/1/edit").should route_to("xfiles#edit", :id => "1")
    end

    it "routes to #create" do
      post("/xfiles").should route_to("xfiles#create")
    end

    it "routes to #update" do
      put("/xfiles/1").should route_to("xfiles#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/xfiles/1").should route_to("xfiles#destroy", :id => "1")
    end

  end
end
