require "spec_helper"

describe EntradaProdutosController do
  describe "routing" do

    it "routes to #index" do
      get("/entrada_produtos").should route_to("entrada_produtos#index")
    end

    it "routes to #new" do
      get("/entrada_produtos/new").should route_to("entrada_produtos#new")
    end

    it "routes to #show" do
      get("/entrada_produtos/1").should route_to("entrada_produtos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/entrada_produtos/1/edit").should route_to("entrada_produtos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/entrada_produtos").should route_to("entrada_produtos#create")
    end

    it "routes to #update" do
      put("/entrada_produtos/1").should route_to("entrada_produtos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/entrada_produtos/1").should route_to("entrada_produtos#destroy", :id => "1")
    end

  end
end
