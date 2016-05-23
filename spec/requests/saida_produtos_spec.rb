require 'spec_helper'

describe "SaidaProdutos" do
  describe "GET /saida_produtos" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get saida_produtos_path
      response.status.should be(200)
    end
  end
end
