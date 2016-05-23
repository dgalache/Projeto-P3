require "spec_helper"

describe SaidaProdutosController do
  describe "routing" do

    it "routes to #index" do
      get("/saida_produtos").should route_to("saida_produtos#index")
    end

    it "routes to #new" do
      get("/saida_produtos/new").should route_to("saida_produtos#new")
    end

    it "routes to #show" do
      get("/saida_produtos/1").should route_to("saida_produtos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/saida_produtos/1/edit").should route_to("saida_produtos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/saida_produtos").should route_to("saida_produtos#create")
    end

    it "routes to #update" do
      put("/saida_produtos/1").should route_to("saida_produtos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/saida_produtos/1").should route_to("saida_produtos#destroy", :id => "1")
    end

  end
end
