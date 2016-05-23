require "spec_helper"

describe DestinosController do
  describe "routing" do

    it "routes to #index" do
      get("/destinos").should route_to("destinos#index")
    end

    it "routes to #new" do
      get("/destinos/new").should route_to("destinos#new")
    end

    it "routes to #show" do
      get("/destinos/1").should route_to("destinos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/destinos/1/edit").should route_to("destinos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/destinos").should route_to("destinos#create")
    end

    it "routes to #update" do
      put("/destinos/1").should route_to("destinos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/destinos/1").should route_to("destinos#destroy", :id => "1")
    end

  end
end
