require "spec_helper"

describe PontosController do
  describe "routing" do

    it "routes to #index" do
      get("/pontos").should route_to("pontos#index")
    end

    it "routes to #new" do
      get("/pontos/new").should route_to("pontos#new")
    end

    it "routes to #show" do
      get("/pontos/1").should route_to("pontos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/pontos/1/edit").should route_to("pontos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/pontos").should route_to("pontos#create")
    end

    it "routes to #update" do
      put("/pontos/1").should route_to("pontos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/pontos/1").should route_to("pontos#destroy", :id => "1")
    end

  end
end
