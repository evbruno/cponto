require 'spec_helper'

describe "pontos/show" do
  before(:each) do
    @ponto = assign(:ponto, stub_model(Ponto,
      :ano => 1,
      :mes => 2,
      :entrada_manha => "Entrada Manha",
      :saida_manha => "Saida Manha",
      :entrada_tarde => "Entrada Tarde",
      :saida_tarde => "Saida Tarde"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Entrada Manha/)
    rendered.should match(/Saida Manha/)
    rendered.should match(/Entrada Tarde/)
    rendered.should match(/Saida Tarde/)
  end
end
