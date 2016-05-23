require "spec_helper"

describe EstoquesController do
  describe "routing" do

    it "routes to #index" do
      get("/estoques").should route_to("estoques#index")
    end

    it "routes to #new" do
      get("/estoques/new").should route_to("estoques#new")
    end

    it "routes to #show" do
      get("/estoques/1").should route_to("estoques#show", :id => "1")
    end

    it "routes to #edit" do
      get("/estoques/1/edit").should route_to("estoques#edit", :id => "1")
    end

    it "routes to #create" do
      post("/estoques").should route_to("estoques#create")
    end

    it "routes to #update" do
      put("/estoques/1").should route_to("estoques#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/estoques/1").should route_to("estoques#destroy", :id => "1")
    end

  end
end
